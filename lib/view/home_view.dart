library home_view;

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyco_test_vl/constant/colors.dart';
import 'package:pyco_test_vl/constant/enum.dart';
import 'package:pyco_test_vl/data/local/db_helper.dart';
import 'package:pyco_test_vl/data/remote/connection_helper.dart';
import 'package:pyco_test_vl/data/service/user_service.dart';
import 'package:pyco_test_vl/model/user_info.dart';

import 'widgets.dart';

part 'home_presenter.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> implements HomeContract {
  HomePresenter _presenter;
  BuildContext scaffoldContext;

  bool onDragging = false;

  @override
  void initState() {
    super.initState();
    _presenter = HomePresenter(context, this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _presenter.initial());
  }

  @override
  void dispose() {
    _presenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context){
          scaffoldContext = context;
          return Stack(
            children: <Widget>[
              buildBackground(
                ratio: 3/4,
                topColor: Color(0xff2d2e32), 
                botColor: Color(0xfff9f9f9),
              ),
              _draggingMaskLayer(),
              _buildCardStack(),
            ],
          );
        },
      ),
    );
  }

  Widget _draggingMaskLayer(){
    if(!onDragging) return Container();
    return Container(
      color: Colors.black26,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Center(child:  _leftDropArea())),
          SizedBox(width: 270),
          Expanded(child: Center(child: _rightDropArea())),
        ],
      ),
    );
  }
  
  Widget _buildCardStack(){
    return Center(
      child: StreamBuilder<List<UserInfo>>(
        stream: _presenter.usersStream,
        builder: (_, snapshot){
          if(!snapshot.hasData) return Center(child: CircularProgressIndicator());
          if(snapshot.data.isEmpty) return Center(child: Text('No data!'));
          List<UserInfo> users = snapshot.data;
          return Stack(
            alignment: AlignmentDirectional.center,
            children: users.reversed
              .map((f) => _buildACard(
                user: f, 
                index: users.indexOf(f), 
                draggable: users.indexOf(f) == 0,
              )).toList(),
          );
        },
      ),
    );
  }

  Widget _buildACard({@required UserInfo user, int index, bool draggable : false}){
    if(user == null) return CircularProgressIndicator();

    bool haveInternet = _presenter.haveInternet;

    if(haveInternet == null) return Center(child: CircularProgressIndicator());

    Uint8List offimage;
    if(!haveInternet)
      offimage = base64Decode(user.pictureOffline);

    Widget avatar = Container(
      width: 110,
      height: 110,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(55),
        border: Border.all(
          width: 2, 
          color: Color(0xffcecece), 
          style: BorderStyle.solid,
        ),
      ),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        backgroundImage: haveInternet ? Image.network(user.picture).image : Image.memory(offimage).image,
      ),
    );

    Widget infoArea = Expanded(child: _buildInfoPanel(user));

    Widget iconArea = StreamBuilder<InfoType>(
      stream: _presenter.typeStream,
      builder: (_, snapshot){
        InfoType type;
        if(!snapshot.hasData) type = InfoType.Name;
        else type = snapshot.data;
        return Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildIcon(Icons.info_outline, 
                type == InfoType.Name, 
                () => _presenter.changeInfoType(InfoType.Name),
              ),
              buildIcon(Icons.calendar_today, 
                type == InfoType.Time, 
                () => _presenter.changeInfoType(InfoType.Time),
              ),
              buildIcon(Icons.location_on, 
                type == InfoType.Adress, 
                () => _presenter.changeInfoType(InfoType.Adress),
              ),
              buildIcon(Icons.perm_contact_calendar, 
                type == InfoType.Phone, 
                () => _presenter.changeInfoType(InfoType.Phone),
              ),
              buildIcon(Icons.lock, 
                type == InfoType.Auth, 
                () => _presenter.changeInfoType(InfoType.Auth),
              ),
            ],
          ),
        );
      },
    );

    Widget card = ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: 250,
        height: 330,
        color: Colors.white,
        child: Material(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              buildBackground(
                ratio: 1/3, 
                topColor: Color(0xffefefef), 
                botColor: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height:30),
                  avatar,
                  SizedBox(height:15),
                  infoArea,
                  iconArea,
                ],
              ),
            ],
          ),
        ),
      ),
    );

    final _addCard = ({@required Widget child}){
      return Card(
        elevation: 3.0,
        child: child,
      );
    };

    final _addDraggable = ({@required Widget child, UserInfo data}){
      return Draggable<UserInfo>(
        data: data,
        child: _addCard(child:child),
        feedback: _addCard(child:child),
        childWhenDragging: Container(),
        onDragStarted: () => setState(() => onDragging = true),
        onDragEnd: (_) => setState(() => onDragging = false),
      );
    };
    
    if(draggable) card = _addDraggable(
      child: card,
      data: user,
    );

    if(onDragging && index == 1) card = _addCard(child: card);

    return card;
  }

  /// Panel info of user
  Widget _buildInfoPanel(UserInfo user){
    const titleStyle = TextStyle(fontSize: 15, color: textSubColor);
    const infoStyle = TextStyle(fontSize: 16, color: textMainColor);
    
    Widget namePanel = Column(
      children: <Widget>[
        const Text('My name is', style: titleStyle),
        Text(
          '${user.name.title}.${user.name.first} ${user.name.last}', 
          style: infoStyle, 
          textAlign: TextAlign.center,
        ),
        Text(
          'Gender: ${user.gender}', 
          style: titleStyle, 
          textAlign: TextAlign.center,
        ),
      ],
    );

    DateTime date = DateTime.fromMillisecondsSinceEpoch(int.parse(user.registered));
    Widget timePanel = Column(
      children: <Widget>[
        const Text('Registeed', style: titleStyle),
        Text(
          '${date.day}/${date.month}/${date.year}', 
          style: infoStyle, 
          textAlign: TextAlign.center,
        ),
      ],
    );

    Widget adressPanel = Column(
      children: <Widget>[
        const Text('My adress is', style: titleStyle),
        Text(
          '${user.location.street}, ${user.location.city}, ${user.location.state}', 
          style: infoStyle, 
          textAlign: TextAlign.center,
        ),
      ],
    );

    Widget phonePanel = Column(
      children: <Widget>[
        const Text('My contact info is', style: titleStyle),
        Text('phone: ${user.phone}', style: infoStyle, textAlign: TextAlign.center),
        Text('cell: ${user.cell}', style: infoStyle, textAlign: TextAlign.center),
        Text('email: ${user.email}', style: infoStyle, textAlign: TextAlign.center),
      ],
    );

    Widget authPanel = Column(
      children: <Widget>[
        const Text('My auth is', style: titleStyle),
        Text('username: ${user.username}', style: infoStyle, textAlign: TextAlign.center),
        Text('password: ${user.password}', style: infoStyle, textAlign: TextAlign.center),
      ],
    );

    return StreamBuilder<InfoType>(
      stream: _presenter.typeStream,
      builder: (_, snapshot){
        Widget child;
        InfoType type;
        if(!snapshot.hasData) type = InfoType.Name;
        else type = snapshot.data;
        switch(type){
          case InfoType.Name: child = namePanel; break;
          case InfoType.Time: child = timePanel; break;
          case InfoType.Adress: child = adressPanel; break;
          case InfoType.Phone: child = phonePanel; break;
          case InfoType.Auth: child = authPanel; break;
          default: child = adressPanel;
        }

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: AlignmentDirectional.center,
          child: child,
        );
      },
    );
  }
  
  Widget _leftDropArea(){
    return buildDropArea<UserInfo>(
      onTrigger: (value) => _presenter.skipUser(value),
    );
  }

  Widget _rightDropArea(){
    return buildDropArea<UserInfo>(
      onTrigger: (value) => _presenter.saveUserToDb(value),
    );
  }

  @override
  void showNotification(String msg) {
    var snackbar = SnackBar(content: Text(msg));
    Scaffold.of(scaffoldContext, nullOk: true)?.showSnackBar(snackbar);
  }
}
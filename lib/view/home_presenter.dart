part of 'home_view.dart';

abstract class HomeContract {
  void showNotification(String msg);
}

class HomePresenter {
  static const STACK_MAX_LENGTH = 5;
  BuildContext _context;
  HomeContract _contract;
  HomePresenter(this._context, this._contract);
  
  List<UserInfo> _userStack = [];
  
  List<UserInfo> get userStack => _userStack;
  
  UserInfo get topOnStackUser => _userStack.isNotEmpty ? _userStack.first : null;
  
  InfoType _infoType;
  
  InfoType get infoType => _infoType;
  
  List<UserInfo> _localUser;
  
  List<UserInfo> get localUser => _localUser;
  
  bool _haveInternet;

  bool get haveInternet => _haveInternet;

  StreamController<List<UserInfo>> _usersController = StreamController.broadcast();

  Stream<List<UserInfo>> get usersStream => _usersController.stream;

  StreamController<InfoType> _typeController = StreamController.broadcast();

  Stream<InfoType> get typeStream => _typeController.stream;

  void initial() async {
    _haveInternet = await checkInternetAvailble();
    print('haveInternet: ${haveInternet ? 'yes' : 'no'}');
    List<UserInfo> users;
    if(_haveInternet){
      users = await Future.wait(List.generate(STACK_MAX_LENGTH, (index) => _getRandomUser()));
    }else {
      users = await _getAllLocalUser();
    }
    _userStack.addAll(users);
    _infoType = InfoType.Adress;
    
    _usersController.sink.add(_userStack);
    _typeController.sink.add(_infoType);
  }

  
  void _remove({bool refresh : true}){
    if(_userStack.isEmpty) return;
    // Remove top item
    if(_haveInternet)
      _userStack.removeAt(0);
    else {
      // Remove top item but move it to end of stack
      UserInfo temp = _userStack.elementAt(0);
      _userStack.removeAt(0);
      _userStack.add(temp);
    }


    if(_userStack.length < STACK_MAX_LENGTH) 
      if(_haveInternet)
        _getRandomUser().then((user) => _add(user));

    if(refresh) _usersController.sink.add(_userStack);
  }


  void _add(UserInfo user, {bool refresh : true}){
    if(user == null) return;
    _userStack.add(user);

    if(refresh) _usersController.sink.add(_userStack);
  }

  /// Set type of info showing
  void setInfoType(InfoType type, {bool refresh : true}){
    if(_infoType == type) return;
    _infoType = type;

    if(refresh) _typeController.sink.add(_infoType);
  }

  /// Future get new user from API
  Future<UserInfo> _getRandomUser() async {
    UserInfo randomUser = await Provider.of<UserService>(_context).getRandomUser();
    return randomUser; 
  }

  Future<List<UserInfo>> _getAllLocalUser() async {
    return await DbHelper().getUsers();
  }

  /// Save him/her to favorite list
  void saveUserToDb([UserInfo user]){
    if(user == null) user = topOnStackUser;
    if(user == null) return;
    _remove();
    if(haveInternet){
      DbHelper().insertUser(user, onComplete: (sucess){
        if(sucess is bool && sucess) _contract.showNotification('Save success!');
        else _contract.showNotification('Save fail!');
      });
    }
  }

  /// Just get him/her go
  void skipUser([UserInfo user]) {
    if(user == null) user = topOnStackUser;
    if(user == null) return;
    _remove();
  }

  /// Change type of info showing
  void changeInfoType(InfoType infoType){
    setInfoType(infoType);
  }

  void dispose(){
    _usersController.close();
    _typeController.close();
  }
}
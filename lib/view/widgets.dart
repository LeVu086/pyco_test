
import 'package:flutter/material.dart';
import 'package:pyco_test_vl/constant/colors.dart';


/// Build 2 color vertical background
Widget buildBackground({double ratio, Color topColor, Color botColor}){
  int topRatio;
  int botRatio;

  for (var i = 1; i < 10000; i++) {
    num value = (ratio * i);
    bool isInteger = value is int || value == value.roundToDouble();
    if(isInteger){
      topRatio = (ratio * i).toInt();
      botRatio = i;
      break;
    }
  }

  topRatio ??= 1;
  botRatio ??= 1;

  return Column(
    children: <Widget>[
      Flexible(flex: topRatio, child: Container(color: topColor)),
      Divider(height: 1, color: Colors.grey),
      Flexible(flex: botRatio, child: Container(color: botColor)),
    ],
  );
}

Widget buildIcon(IconData iconData, bool isActive, Function onPressed){
  return IconButton(
    icon: Icon(iconData, color: isActive ? buttonActiveColor : buttonDeactiveColor),
    onPressed: onPressed,
  );
}

Widget buildDropArea<T>({Function(T) onTrigger}){
  return Container(
    color: Colors.transparent,
    child: DragTarget<T>(
      onWillAccept: (value) => true,
      onAccept: (value) => onTrigger(value),
      builder: (context, candidates, rejects){
        // if(candidates.length > 0) 
        //   return _dropPanel(color: Colors.white24, left: left);
        return Container();
      },
    ),
  );
}
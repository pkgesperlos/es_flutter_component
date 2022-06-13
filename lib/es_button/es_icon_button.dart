
import 'package:es_flutter_component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsIconButton extends StatelessWidget {
  IconData icon;
  VoidCallback onPressed;
  Color buttonColor;
  Color buttonFontColor;
  Color buttonBorderColor;
  Color buttonShadowColor;
  double buttonSizeX;
  double buttonSizeY;
  double buttonFontSize;
  double buttonIconSize;

  EsIconButton({
    required this.icon,
    required this.onPressed,
    this.buttonColor = Constants.buttonColor,
    this.buttonFontColor = Constants.buttonFontColor,
    this.buttonBorderColor = Constants.buttonBorderColor,
    this.buttonShadowColor = Constants.buttonShadowColor,
    this.buttonSizeX = Constants.buttonSizeX,
    this.buttonSizeY = Constants.buttonSizeY,
    this.buttonFontSize = Constants.buttonFontSize,
    this.buttonIconSize = Constants.buttonIconSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: buttonSizeY / 2, horizontal: buttonSizeX / 2),
          // child: Text(
          //   text,
          //   style: TextStyle(color: buttonFontColor, fontSize: buttonFontSize),
          // ),
          child: Icon(icon,size: buttonIconSize,color:buttonFontColor),
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(buttonSizeX / 3)),
              border: Border.all(color: buttonBorderColor, width: 2),
              boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    color: buttonShadowColor,
                    spreadRadius: 2,
                    blurRadius: 2)
              ]),
        ));
  }
}


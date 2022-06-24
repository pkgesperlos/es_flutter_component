import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsOrdinaryButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  Color buttonColor;
  Color buttonFontColor;
  Color buttonBorderColor;
  Color buttonShadowColor;
  double buttonSizeX;
  double buttonSizeY;
  double buttonFontSize;

  EsOrdinaryButton({
    required this.text,
    required this.onPressed,
    this.buttonColor = Constants.buttonColor,
    this.buttonFontColor = Constants.buttonFontColor,
    this.buttonBorderColor = Constants.buttonBorderColor,
    this.buttonShadowColor = Constants.buttonShadowColor,
    this.buttonSizeX = Constants.buttonSizeX,
    this.buttonSizeY = Constants.buttonSizeY,
    this.buttonFontSize = Constants.buttonFontSize,
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
          child: EsOrdinaryText(data: text,color: Constants.buttonFontColor,size: Constants.buttonFontSize,),
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(Constants.borderRadiusDimension)),
              border: Border.all(color: buttonBorderColor, width: 2),
              boxShadow: [
                // BoxShadow(
                //     offset: Offset(2, 2),
                //     color: buttonShadowColor,
                //     spreadRadius: 2,
                //     blurRadius: 2)
              ]),
        ));
  }
}

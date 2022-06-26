import 'package:es_flutter_component/images/Constants/constants.dart';
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
          padding: EdgeInsets.only(
              bottom: buttonSizeY*0.8,top: buttonSizeY *0.4, left: buttonSizeX / 2, right: buttonSizeX / 2),
          child: EsOrdinaryText(data: text,color:buttonFontColor,size:buttonFontSize,),
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(Constants.borderRadiusDimension)),
              // border: Border.all(color: buttonBorderColor, width: 2),
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

import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsBorderedButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  Color buttonColor;
  Color buttonFontColor;
  Color buttonBorderColor;
  Color buttonShadowColor;
  double buttonSizeX;
  double buttonSizeY;
  double buttonFontSize;

  EsBorderedButton({
    required this.text,
    required this.onPressed,
    this.buttonColor = Constants.buttonFontColor,
    this.buttonFontColor = Constants.buttonColor,
    this.buttonBorderColor = Constants.buttonBorderColor,
    this.buttonShadowColor = Constants.buttonShadowColor,
    this.buttonSizeX = Constants.buttonSizeX,
    this.buttonSizeY = Constants.buttonSizeY,
    this.buttonFontSize = Constants.buttonFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: 0, horizontal: buttonSizeX / 5),
            child: EsOrdinaryText(text,color:buttonFontColor,size:buttonFontSize,),
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(buttonSizeX)),

                border: Border.all(color: buttonFontColor, width: 2),
                // boxShadow: [
                //   BoxShadow(
                //       offset: Offset(2, 2),
                //       color: buttonShadowColor,
                //       spreadRadius: 2,
                //       blurRadius: 2)
                // ]
            ),
          )),
    );
  }
}

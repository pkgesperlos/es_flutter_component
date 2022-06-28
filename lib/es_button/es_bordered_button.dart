import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsBorderedButton extends StatelessWidget {
  String text;
  VoidCallback onTap;
  Color buttonColor;
  Color buttonFontColor;
  Color buttonBorderColor;
  Color buttonShadowColor;
  double size;

  EsBorderedButton({
    required this.text,
    required this.onTap,
    this.buttonColor = Constants.buttonFontColor,
    this.buttonFontColor = Constants.buttonColor,
    this.buttonBorderColor = Constants.buttonBorderColor,
    this.buttonShadowColor = Constants.buttonShadowColor,
    this.size = Constants.buttonFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: 0, horizontal: size/2 ),
            child: EsOrdinaryText(text,color:buttonFontColor,size:size,),
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(size)),

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


import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:es_flutter_component/images/Constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsLoadingButton extends StatelessWidget {

  VoidCallback onPressed;
  Color buttonColor;
  Color buttonFontColor;
  Color buttonBorderColor;
  Color buttonShadowColor;
  double buttonSizeX;
  double buttonSizeY;
  double buttonFontSize;
  double buttonIconSize;

  EsLoadingButton({

    required this.onPressed,
    this.buttonColor = Styles.primaryColor,
    this.buttonFontColor =Styles.t6Color,
    this.buttonBorderColor = Styles.t6Color,
    this.buttonShadowColor =Styles.t4Color,
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
          // width: buttonSizeX,
          // height: buttonSizeX,
          padding: EdgeInsets.symmetric(
              vertical: buttonSizeX / 4, horizontal: buttonSizeX / 4),

          child: CircularProgressIndicator(color:buttonFontColor,),
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


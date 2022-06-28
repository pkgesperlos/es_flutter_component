import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../es_text/es_ordinary_text.dart';

class EsInformationButton extends StatelessWidget {
  String text;
  String dialogeText;
  Color buttonColor;
  Color buttonFontColor;
  Color buttonBorderColor;
  Color buttonShadowColor;
  double buttonSizeX;
  double buttonSizeY;
  double buttonFontSize;

  EsInformationButton({
    this.text="i",
    this.dialogeText="",
    this.buttonColor = Constants.buttonFontColor,
    this.buttonFontColor = Constants.buttonColor,
    this.buttonBorderColor = Constants.buttonBorderColor,
    this.buttonShadowColor = Constants.buttonShadowColor,
    this.buttonSizeX = Constants.buttonSizeX,
    this.buttonSizeY = Constants.buttonSizeY,
    this.buttonFontSize = Constants.buttonFontSize*0.7,
  });

  @override
  Widget build(BuildContext context) {
    Widget customDialog() {

      return Dialog(

        child: Container(
          // width: 100,
          // height:100,
          color:Colors.white,
          child:Container(
            padding: EdgeInsets.all(Constants.paddingDimension),
            child:  EsOrdinaryText(dialogeText ,align: TextAlign.left,),),
        ),
      );
    }
    return IntrinsicWidth(
      child: InkWell(

          onTap: (){showDialog(context: context, builder: (context) => customDialog());},
          child: Container(

            width: buttonSizeX/3,
            height: buttonSizeX/3,

            child: EsOrdinaryText(text,color:buttonFontColor,size: buttonFontSize,),
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.all(Radius.circular(buttonSizeX / 2)),
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

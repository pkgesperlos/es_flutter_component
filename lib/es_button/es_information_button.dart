import 'package:es_flutter_component/constants.dart';
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

        onTap: (){showDialog(context: context, builder: (context) => customDialog());},
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: buttonSizeY / 4, horizontal: buttonSizeX / 3),
          // child: Text(
          //   text,
          //   style: TextStyle(color: buttonFontColor, fontSize: buttonFontSize),
          // ),
          child: EsOrdinaryText(data: text,color: Constants.buttonFontColor,size: Constants.buttonFontSize,),
          decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.all(Radius.circular(buttonSizeX / 2)),
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
  Widget customDialog() {

    return Dialog(

      child: Container(
          // width: 100,
          // height:100,
          color:Colors.white,
          child:Container(
            padding: EdgeInsets.all(Constants.paddingDimension),
            child:  EsOrdinaryText(data:dialogeText ,),),
      ),
    );
  }
}

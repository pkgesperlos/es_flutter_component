import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../es_text/es_ordinary_text.dart';
import '../resources/Constants/dims.dart';

class EsInformationButton extends StatelessWidget {
  String text;
  String dialogeText;
  Color ColorAsset;
  Color buttonFontColor;
  Color buttonBorderColor;
  Color buttonShadowColor;
  double? size;

  EsInformationButton({
    this.text="i",
    this.dialogeText="",
    this.ColorAsset = Constants.buttonFontColor,
    this.buttonFontColor = Constants.ColorAsset,
    this.buttonBorderColor = Constants.buttonBorderColor,
    this.buttonShadowColor = Constants.buttonShadowColor,
    this.size ,

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

            width: size?? Dims.h0Padding(context)*0.7,
            height: size?? Dims.h0Padding(context)*0.7,

            child: EsOrdinaryText(text,color:buttonFontColor,size:size?? Dims.h2FontSize(context)),
            decoration: BoxDecoration(
                color: ColorAsset,
                borderRadius: BorderRadius.all(Radius.circular(size?? Dims.h0Padding(context)/ 2)),
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

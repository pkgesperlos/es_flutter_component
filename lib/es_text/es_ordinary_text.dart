import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../resources/Constants/dims.dart';

class EsOrdinaryText extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color color;
  String fontFamily;
  bool overFlowTag;
  int maxLine;
  bool isBold;


  EsOrdinaryText(
      this.data,
      {Key? key,
        this.align = TextAlign.center,
        this.size ,
        this.color = Styles.textPrimaryColor,
        this.fontFamily = Constants.fontFamily,
        this.overFlowTag=false,
        this.maxLine=3,
        this.isBold=false
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Center(child: Text(
        data,
        textAlign:align,
        maxLines:overFlowTag?maxLine:null ,
        style: TextStyle(
          // height: 1,
          color: color,
          fontSize: size ?? Dims.h3FontSize(context),
          fontFamily: fontFamily,
          fontWeight: isBold?FontWeight.bold:FontWeight.normal,
          overflow:overFlowTag? TextOverflow.ellipsis:null,


        ),),),
    );
  }
}

import 'package:es_flutter_component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsOrdinaryText extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;
  bool overFlowTag;


  EsOrdinaryText(
      {Key? key,
        required this.data,
        this.align = TextAlign.center,
        this.size = Constants.ordinaryFontSize ,
        this.color = Constants.ordinaryText,
        this.fontFamily = Constants.fontFamily,
        this.overFlowTag=false

      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        data,
      textAlign:align,
      maxLines:overFlowTag?3:null ,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
        overflow:overFlowTag? TextOverflow.ellipsis:null,


      ),),
    );
  }
}

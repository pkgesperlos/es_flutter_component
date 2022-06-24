import 'package:es_flutter_component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsOrdinaryText extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;


  EsOrdinaryText(
      {Key? key,
        required this.data,
        this.align = TextAlign.center,
        this.size = Constants.ordinaryFontSize ,
        this.color = Constants.ordinaryText,
        this.fontFamily = Constants.fontFamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data,
    textAlign: align,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontFamily: fontFamily,
      fontWeight: FontWeight.w300,
      // overflow: TextOverflow.ellipsis,

    ),);
  }
}

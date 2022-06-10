import 'package:es_flutter_component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsOrdinaryText extends StatelessWidget {

  String data;
  TextAlign align;
  EsOrdinaryText({Key? key, required this.data,this.align=TextAlign.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data,
    textAlign: align,
    style: TextStyle(
      color: Constants.ordinaryText,
      fontSize: Constants.ordinaryFontSize,
      fontFamily: "yekan",
      fontWeight: FontWeight.w300,
      // overflow: TextOverflow.ellipsis,

    ),);
  }
}

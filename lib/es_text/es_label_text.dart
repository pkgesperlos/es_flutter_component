import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';

class EsLableText extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;

  EsLableText(
      {Key? key,
        required this.data,
        this.align = TextAlign.center,
        this.size = Constants.lableFontSize,
        this.color = Constants.lableText,
        this.fontFamily = Constants.fontFamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        fontSize: size,
        fontFamily: "yekan",
        fontWeight: FontWeight.w200,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

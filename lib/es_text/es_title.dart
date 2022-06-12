import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';

class EsTitle extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;

  EsTitle(
      {Key? key,
        required this.data,
        this.align = TextAlign.center,
        this.size = Constants.titleFontSize,
        this.color = Constants.titleText,
        this.fontFamily = Constants.fontFamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily:fontFamily,
        fontWeight: FontWeight.bold,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:es_flutter_component/images/Constants/dims.dart';
import 'package:flutter/material.dart';

class EsParagraph extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color color;
  String fontFamily;
  final weight;

  EsParagraph(
      {Key? key,
        required this.data,
        this.weight= FontWeight.w500,
        this.align = TextAlign.center,
        this.size,
        this.color = Constants.titleText,
        this.fontFamily = Constants.fontFamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    defaults(context);
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily:fontFamily,
        fontWeight: weight,
        // overflow: TextOverflow.ellipsis,
      ),
    );

  }

  void defaults(context) {
    size=Dims.h3FontSize(context);
  }
}
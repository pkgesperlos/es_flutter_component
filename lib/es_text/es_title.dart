import 'package:es_flutter_component/es_text/es_header.dart';
import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:es_flutter_component/images/Constants/dims.dart';
import 'package:es_flutter_component/images/Constants/styles.dart';
import 'package:flutter/material.dart';

class EsTitle extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color color;
  String fontFamily;
  bool isBold;
  final weight;

  EsTitle(
      this.data,
      {Key? key,

        this.weight= FontWeight.bold,
        this.align = TextAlign.center,
        this.size,
        this.color = Styles.textPrimaryColor,
        this.fontFamily = Constants.fontFamily,
      this.isBold=true
      })
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
        fontWeight: isBold?FontWeight.bold:weight,
        // overflow: TextOverflow.ellipsis,
      ),
    );

  }

  void defaults(context) {
    size=Dims.h1FontSize(context);
  }
}

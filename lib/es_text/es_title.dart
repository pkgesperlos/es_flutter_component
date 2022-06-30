import 'package:es_flutter_component/es_text/es_header.dart';
import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/material.dart';

import '../resources/Constants/styles.dart';

class EsTitle extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color color;
  String fontFamily;
  bool isBold;


  EsTitle(
      this.data,
      {Key? key,

        this.align = TextAlign.center,
        this.size,
        this.color = Styles.textPrimaryColor,
        this.fontFamily = Constants.fontFamily,
      this.isBold=false
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        height: (size ?? Dims.h2FontSize(context))*0.04,
        color: color,
        fontSize: size ?? Dims.h2FontSize(context),
        fontFamily:fontFamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        // overflow: TextOverflow.ellipsis,
      ),
    );

  }

}

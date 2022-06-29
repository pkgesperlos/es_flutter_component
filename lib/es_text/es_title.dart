import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:es_flutter_component/images/Constants/dims.dart';
import 'package:flutter/material.dart';

import '../images/Constants/styles.dart';

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
        color: color,
        fontSize: size ?? Dims.h2FontSize(context),
        fontFamily:fontFamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        // overflow: TextOverflow.ellipsis,
      ),
    );

  }

}

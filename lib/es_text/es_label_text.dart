
import 'package:flutter/material.dart';

import '../images/Constants/constants.dart';
import '../images/Constants/dims.dart';

class EsLabelText extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color color;
  String fontFamily;
  bool isBold;

  EsLabelText(this.data,
      {Key? key,
        this.align = TextAlign.center,
        this.size ,
        this.color = Constants.labelText,
        this.fontFamily = Constants.fontFamily,
        this.isBold=false
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
        fontWeight: isBold?FontWeight.bold:FontWeight.w200,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
  void defaults(context) {
    size=Dims.h1FontSize(context);
  }
}



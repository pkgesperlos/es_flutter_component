
import 'package:es_flutter_component/images/Constants/styles.dart';
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
        fontSize:size ?? Dims.h3FontSize(context),
        fontFamily:fontFamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}




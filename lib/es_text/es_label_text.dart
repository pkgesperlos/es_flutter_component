
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/material.dart';

import '../resources/Constants/constants.dart';
import '../resources/Constants/dims.dart';

class EsLabelText extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color color;
  // String fontFamily;
  bool isBold;

  EsLabelText(this.data,
      {Key? key,
        this.align = TextAlign.center,

        this.size ,
        this.color = Styles.textPrimaryColor,
        // this.fontFamily = Constants.fontFamily,
        this.isBold=false
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        // height: (size ?? Dims.h3FontSize(context))*0.04,
        color: color,
        fontSize:size ?? Dims.h3FontSize(context),
        // fontFamily:fontFamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}



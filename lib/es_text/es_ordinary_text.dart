import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/Constants/dims.dart';

class EsOrdinaryText extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  double? height;
  Color color;
  // String fontFamily;
  bool overFlowTag;
  int maxLine;
  bool isBold;

  EsOrdinaryText(this.data,
      {Key? key,
        this.align = TextAlign.center,
        this.size,
        this.color = Styles.textPrimaryColor,
        // this.fontFamily = Constants.fontFamily,
        this.overFlowTag = false,
        this.maxLine = 3,
        this.isBold = false,
        this.height})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: overFlowTag ? maxLine : null,
      textAlign: align,
      text: TextSpan(
        text: data,

        style: TextStyle(
          height: height==null?null:height,
          textBaseline: TextBaseline.alphabetic,
          color: color,
          fontSize: size ?? Dims.h3FontSize(context),
          // fontFamily: fontFamily,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          overflow: overFlowTag ? TextOverflow.ellipsis : null,
        ),
      ),
    );
  }
}

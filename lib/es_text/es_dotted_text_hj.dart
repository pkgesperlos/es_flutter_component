import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';

import '../resources/Constants/styles.dart';

class EsDottedText extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color color;
  // String fontFamily;
  bool isBold;

  EsDottedText(
      this.data,
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
    return IntrinsicWidth(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size ?? Dims.h3FontSize(context)/2.5,
            height: size ?? Dims.h3FontSize(context)/2.5,
            decoration: BoxDecoration(
                color: color,
                borderRadius:
                    BorderRadius.all(Radius.circular(size ?? Dims.h3FontSize(context) ))),
          ),
          SizedBox(
            width: size ?? Dims.h3FontSize(context)/5,
          ),
          Expanded(child: Text(
            data,
            textAlign: align,
            style: TextStyle(
              // height: (size ?? Dims.h3FontSize(context))*0.04,
              color: color,
              fontSize: size ?? Dims.h3FontSize(context),
              // fontFamily: fontFamily,
              fontWeight: isBold?FontWeight.bold:FontWeight.normal,
              // overflow: TextOverflow.ellipsis,
            ),
          ))
        ],
      ),
    );
  }
}

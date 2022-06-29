import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../images/Constants/styles.dart';

class EsDottedText extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;
  bool isBold;

  EsDottedText(
      this.data,
      {Key? key,
      this.align = TextAlign.center,
      this.size = Constants.markedFontSize,
      this.color = Styles.textPrimaryColor,
      this.fontFamily = Constants.fontFamily,
        this.isBold=true
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
            width: size/2.5,
            height: size/2.5,
            decoration: BoxDecoration(
                color: color,
                borderRadius:
                    BorderRadius.all(Radius.circular(size ))),
          ),
          SizedBox(
            width: size/5,
          ),
          Expanded(child: Text(
            data,
            textAlign: align,
            style: TextStyle(
              color: color,
              fontSize: size,
              fontFamily: fontFamily,
              fontWeight: isBold?FontWeight.bold:FontWeight.normal,
              // overflow: TextOverflow.ellipsis,
            ),
          ))
        ],
      ),
    );
  }
}

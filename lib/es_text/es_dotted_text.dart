import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';

class EsDottedText extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;

  EsDottedText(
      {Key? key,
      required this.data,
      this.align = TextAlign.center,
      this.size = Constants.markedFontSize,
      this.color = Constants.dottedText,
      this.fontFamily = Constants.fontFamily})
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
            width: Constants.spaceDimension,
          ),
          Expanded(child: Text(
            data,
            textAlign: align,
            style: TextStyle(
              color: color,
              fontSize: size,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              // overflow: TextOverflow.ellipsis,
            ),
          ))
        ],
      ),
    );
  }
}

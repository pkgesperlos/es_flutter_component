import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';

class EsMarkedText extends StatelessWidget {
  String data;
  TextAlign align;

  EsMarkedText({Key? key, required this.data, this.align = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.check,size: Constants.iconSize,color: Constants.markedText,),
        SizedBox(width: Constants.spaceDimension,),
        Text(
          data,
          textAlign: align,
          style: TextStyle(
            color: Constants.markedText,
            fontSize: Constants.markedFontSize,
            fontFamily: "yekan",
            fontWeight: FontWeight.bold,
            // overflow: TextOverflow.ellipsis,
          ),
        ),

      ],
    );
  }
}

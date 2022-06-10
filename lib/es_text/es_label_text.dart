import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';

class EsLableText extends StatelessWidget {
  String data;
  TextAlign align;

  EsLableText({Key? key, required this.data, this.align = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        fontSize: Constants.lableFontSize,
        fontFamily: "yekan",
        fontWeight: FontWeight.w200,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

import 'package:es_flutter_component/images/constants.dart';
import 'package:flutter/material.dart';

class EsTitle extends StatelessWidget {
  String data;
  TextAlign align;

  EsTitle({Key? key, required this.data, this.align = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        color: Constants.titleText,
        fontSize: Constants.titleFontSize,
        fontFamily: "yekan",
        fontWeight: FontWeight.bold,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

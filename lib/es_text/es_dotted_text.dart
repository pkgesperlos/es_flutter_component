import 'package:es_flutter_component/images/constants.dart';
import 'package:flutter/material.dart';

class EsDottedText extends StatelessWidget {
  String data;
  TextAlign align;

  EsDottedText({Key? key, required this.data, this.align = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: Constants.iconSize / 3,
            height: Constants.iconSize / 3,
            decoration: BoxDecoration(
                color: Constants.markedText,
                borderRadius:
                    BorderRadius.all(Radius.circular(Constants.iconSize / 2))),
          ),
          SizedBox(
            width: Constants.spaceDimension,
          ),
          IntrinsicHeight(child: Text(
            data,
            textAlign: align,
            style: TextStyle(
              color: Constants.markedText,
              fontSize: Constants.markedFontSize,
              fontFamily: "yekan",
              fontWeight: FontWeight.bold,
              // overflow: TextOverflow.ellipsis,
            ),
          ),),
        ],
      ),
    );
  }
}

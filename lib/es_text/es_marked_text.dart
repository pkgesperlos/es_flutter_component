import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';


class EsMarkedText extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;

  EsMarkedText(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check,size:size,color: color,),
          SizedBox(
            width: size/2,
          ),
          Expanded(child: Text(
            data,
            // maxLines: 2,
            textAlign: align,
            style: TextStyle(
              color: color,
              fontSize: size,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              // overflow: TextOverflow.ellipsis,
            ),
          )),
        ],
      ),
    );
  }
}





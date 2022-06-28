import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:flutter/material.dart';


class EsMarkedText extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;
  bool isBold;

  EsMarkedText(
      this.data,
      {Key? key,

        this.align = TextAlign.center,
        this.size = Constants.markedFontSize,
        this.color = Constants.dottedText,
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
          Icon(Icons.check,size:size,color: color,),
          SizedBox(
            width: size/5,
          ),
          Expanded(child: Text(
            data,
            // maxLines: 2,
            textAlign: align,
            style: TextStyle(
              color: color,
              fontSize: size,
              fontFamily: fontFamily,
              fontWeight: isBold?FontWeight.bold:FontWeight.w500,
              // overflow: TextOverflow.ellipsis,
            ),
          )),
        ],
      ),
    );
  }
}





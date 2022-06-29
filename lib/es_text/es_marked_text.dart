import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../images/Constants/dims.dart';
import '../images/Constants/styles.dart';


class EsMarkedText extends StatelessWidget {
  String data;
  TextAlign align;
  double? size;
  Color color;
  String fontFamily;
  bool isBold;

  EsMarkedText(
      this.data,
      {Key? key,

        this.align = TextAlign.center,
        this.size ,
        this.color = Styles.textPrimaryColor,
        this.fontFamily = Constants.fontFamily,
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
          Icon(Icons.check,size:size,color: color,),
          SizedBox(
            width: size ?? Dims.h3FontSize(context)/5,
          ),
          Expanded(child: Text(
            data,
            // maxLines: 2,
            textAlign: align,
            style: TextStyle(
              color: color,
              fontSize: size ?? Dims.h3FontSize(context),
              fontFamily: fontFamily,
              fontWeight: isBold?FontWeight.bold:FontWeight.normal,
              // overflow: TextOverflow.ellipsis,
            ),
          )),
        ],
      ),
    );
  }
}





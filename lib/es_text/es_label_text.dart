
import 'package:flutter/material.dart';

import '../images/Constants/constants.dart';

class EsLabelText extends StatelessWidget {
  String data;
  TextAlign align;
  double size;
  Color color;
  String fontFamily;
  bool isBold;

  EsLabelText(this.data,
      {Key? key,
        this.align = TextAlign.center,
        this.size = Constants.labelFontSize,
        this.color = Constants.labelText,
        this.fontFamily = Constants.fontFamily,
        this.isBold=false
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontFamily:fontFamily,
        fontWeight: isBold?FontWeight.bold:FontWeight.w200,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}


// class EsTitle extends StatelessWidget {
//   String data;
//   TextAlign align;
//   double size;
//   Color color;
//   String fontFamily;
//
//   EsTitle(
//       {Key? key,
//         required this.data,
//         this.align = TextAlign.center,
//         this.size = Constants.titleFontSize,
//         this.color = Constants.titleText,
//         this.fontFamily = Constants.fontFamily})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       data,
//       textAlign: align,
//       style: TextStyle(
//         color: color,
//         fontSize: size,
//         fontFamily:fontFamily,
//         fontWeight: FontWeight.bold,
//         // overflow: TextOverflow.ellipsis,
//       ),
//     );
//   }
// }


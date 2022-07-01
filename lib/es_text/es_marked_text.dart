import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../resources/Constants/dims.dart';
import '../resources/Constants/styles.dart';

class EsMarkedText extends StatelessWidget {
  String data;
  TextAlign? align;
  double? size;
  Color? color;
  bool isBold;

  EsMarkedText(this.data,
      {Key? key,
      this.align ,
      this.size,
      this.color,
      this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: RichText(
        textAlign: align??TextAlign.center,
        text: TextSpan(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(Icons.check_rounded, size:( size??Dims.h3FontSize(context)),color: color??Styles.t1Color),
            ),
            WidgetSpan(child: EsHSpacer()),
            WidgetSpan(alignment: PlaceholderAlignment.bottom,
                child: EsOrdinaryText(data,size: size??Dims.h3FontSize(context),color: color??Styles.t1Color,
                isBold: isBold,
                )),

          ],
        ),
      ),
    );
  }
}

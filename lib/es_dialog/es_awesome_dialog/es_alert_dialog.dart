import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../es_button/es_button.dart';
import '../../es_spacer/es_h_divider.dart';
import '../../es_spacer/es_h_spacer.dart';
import '../../es_text/es_ordinary_text.dart';
import '../../es_text/es_title.dart';
import '../../resources/Constants/dims.dart';
import '../../resources/Constants/styles.dart';

class EsAlertDialog extends StatelessWidget {
  String? title;
  String? content;
  Function? onConfirmPress;

  EsAlertDialog({this.title, this.content, this.onConfirmPress});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(Dims.boxBorderRadious))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: EdgeInsets.all(Dims.h1Padding(context)),
                child: EsTitle(
                  title ?? "",
                  align: TextAlign.start,
                )),
            EsHDivider(),
            Padding(
                padding: EdgeInsets.symmetric(
                    vertical: Dims.h1Padding(context) * 1.5,
                    horizontal: Dims.h1Padding(context)),
                child: EsOrdinaryText(
                  content ?? "",
                  align: TextAlign.start,
                )),
            EsHDivider(),
            Padding(
                padding: EdgeInsets.all(Dims.h1Padding(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    EsButton(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      text: "لغو",
                      fillColor: ColorAsset.danger,
                    ),
                    EsHSpacer(
                      big: true,
                    ),
                    EsButton(
                        onTap: () {
                          Navigator.of(context).pop();
                          onConfirmPress!();
                        },
                        text: "تایید"),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

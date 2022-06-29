import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../resources/Constants/constants.dart';


class EsAutoHideDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  int time;
  Color ColorAsset;
  Color buttonFontColor;
  EsAutoHideDialog({
    required this.text,
    required this.title,
    required this.desc,
    required this.time,
    this.ColorAsset=Constants.autoHideColorAsset,
    this.buttonFontColor=Constants.buttonFontColor});

  @override
  State<StatefulWidget> createState() {
    return _EsAutoHideDialog();
  }

}
class _EsAutoHideDialog extends State<EsAutoHideDialog>{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: EsButton(
          text: widget.text,
          fillColor: widget.ColorAsset,
          textColor: widget.buttonFontColor,
          onTap: () {

            AwesomeDialog(
              context: context,
              dialogType: DialogType.INFO,
              animType: AnimType.SCALE,
              title:widget.title,
              desc: widget.desc,
              autoHide: Duration(seconds: widget.time),
            )..show();

          },
        )

    );
  }

}

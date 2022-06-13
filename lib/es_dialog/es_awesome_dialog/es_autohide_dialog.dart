import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../constants.dart';


class EsAutoHideDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  int time;
  Color buttonColor;
  Color buttonFontColor;
  EsAutoHideDialog({
    required this.text,
    required this.title,
    required this.desc,
    required this.time,
    this.buttonColor=Constants.successButtonColor,
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
        child: EsOrdinaryButton(
          text: widget.text,
          buttonColor: widget.buttonColor,
          buttonFontColor: widget.buttonFontColor,
          onPressed: () {

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

import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../constants.dart';


class EsBodyDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  Color buttonColor;
  Color buttonFontColor;
  EsBodyDialog({
    required this.text,
    required this.title,
    required this.desc,
    this.buttonColor=Constants.bodyButtonColor,
    this.buttonFontColor=Constants.buttonFontColor});

  @override
  State<StatefulWidget> createState() {
    return _EsBodyDialog();
  }

}
class _EsBodyDialog extends State<EsBodyDialog>{
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
              animType: AnimType.SCALE,
              dialogType: DialogType.INFO,
              body: Center(
                child: Text(
                 widget.desc, style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              title: widget.title,
              desc: widget.desc,
            )..show();
            

          },
        )

    );
  }

}

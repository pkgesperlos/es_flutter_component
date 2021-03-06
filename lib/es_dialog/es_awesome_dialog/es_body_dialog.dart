import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../resources/Constants/constants.dart';


class EsBodyDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  Color ColorAsset;
  Color buttonFontColor;
  EsBodyDialog({
    required this.text,
    required this.title,
    required this.desc,
    this.ColorAsset=Constants.bodyColorAsset,
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
        child: EsButton(
          text: widget.text,
          fillColor: widget.ColorAsset,
          textColor: widget.buttonFontColor,
          onTap: () {
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

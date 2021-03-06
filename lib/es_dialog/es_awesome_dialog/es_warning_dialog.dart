import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../resources/Constants/constants.dart';



class EsWarningDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  Color ColorAsset;
  Color buttonFontColor;
  VoidCallback btnCancelOnPress;
  VoidCallback btnOkOnPress;
  EsWarningDialog({
    required this.text,
    required this.title,
    required this.desc,
    required this.btnCancelOnPress,
    required this.btnOkOnPress,
    this.ColorAsset=Constants.warningColorAsset,
    this.buttonFontColor=Constants.buttonFontColor});

  @override
  State<StatefulWidget> createState() {
    return _EsWarningDialog();
  }

}
class _EsWarningDialog extends State<EsWarningDialog>{
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
                dialogType: DialogType.WARNING,
                headerAnimationLoop: false,
                animType: AnimType.TOPSLIDE,
                showCloseIcon: true,
                closeIcon: Icon(Icons.close_fullscreen_outlined),
                title: widget.text,
                desc: widget.desc,
                btnCancelOnPress: () {},
                btnOkOnPress: () {})
              ..show();



          },
        )

    );
  }

}

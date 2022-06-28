import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../images/Constants/constants.dart';



class EsWarningDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  Color buttonColor;
  Color buttonFontColor;
  VoidCallback btnCancelOnPress;
  VoidCallback btnOkOnPress;
  EsWarningDialog({
    required this.text,
    required this.title,
    required this.desc,
    required this.btnCancelOnPress,
    required this.btnOkOnPress,
    this.buttonColor=Constants.warningButtonColor,
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
        child: EsOrdinaryButton(
          text: widget.text,
          fillColor: widget.buttonColor,
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

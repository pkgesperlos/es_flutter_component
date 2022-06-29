import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import '../../resources/Constants/constants.dart';


class EsSuccessDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  Color buttonColor;
  Color buttonFontColor;
  EsSuccessDialog({
    required this.text,
    required this.title,
    required this.desc,
    this.buttonColor=Constants.successButtonColor,
    this.buttonFontColor=Constants.buttonFontColor});

  @override
  State<StatefulWidget> createState() {
    return _EsSuccessDialog();
  }

}
class _EsSuccessDialog extends State<EsSuccessDialog>{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: EsButton(
          text: widget.text,
          fillColor: widget.buttonColor,
          textColor: widget.buttonFontColor,
          onTap: () {

            AwesomeDialog(
              context: context,
              animType: AnimType.LEFTSLIDE,
              headerAnimationLoop: false,
              dialogType: DialogType.SUCCES,
              title: widget.title,
              desc: widget.desc,
              btnOkOnPress: () {

              },
              btnOkIcon: Icons.check_circle,
              // onDissmissCallback: () {
              //   debugPrint('Dialog Dissmiss from callback');
              // }
            )..show();

          },
        )

    );
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class EsSuccessDialog extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _EsSuccessDialog();
  }

}
class _EsSuccessDialog extends State<EsSuccessDialog>{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedButton(
          text: 'Succes Dialog',
          color: Colors.green,
          pressEvent: () {

            AwesomeDialog(
              context: context,
              animType: AnimType.LEFTSLIDE,
              headerAnimationLoop: false,
              dialogType: DialogType.SUCCES,
              title: 'Succes',
              desc: 'Dialog description here',
              btnOkOnPress: () {
                debugPrint('OnClcik');
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

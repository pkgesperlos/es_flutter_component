import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'es_alert/toast/toast_alert.dart';

class Test3 extends StatefulWidget {
  Test3({Key? key}) : super(key: key);

  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          ToastAlert.show(context, text: "عملیات با موفیت انجام شد",textColor: Colors.white);
        },
        child: Text("sad"));
  }

}

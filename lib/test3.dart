import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
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
    return EsIconButton(Icons.add,onTap: (){

      print("sadsa");
    },useConfidence: true,);
  }

}

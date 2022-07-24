
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'es_button/es_button.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("sadasd");
      },
      child: EsButton(
        clickable: false,
        onTap: (){},
        text: "Sad",
      ),
    );
  }

}

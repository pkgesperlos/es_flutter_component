

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'es_checkbox.dart';

class EsCheckBoxUse extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {


    return Form(
        key: _formkey,
        child: Column(
          children: [
            EsCheckBox(
              title: Text("با قوانین و مقررات سایت موافقم"),
              validator: (value) {
                if (!value!) {
                  return "It is neccessary!";
                }
              }, onSaved: (bool? newValue) {  },
            ),
            ElevatedButton(
                onPressed: () {
                  _formkey.currentState?.validate();
                },
                child: Text("pass"))
          ],
        ));
  }
}

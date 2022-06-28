import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../es_text/es_ordinary_text.dart';
import 'es_checkbox.dart';

class EsCheckBoxvalidation extends StatelessWidget {
  String title;
  String errorText;
  String buttonText;

  EsCheckBoxvalidation(
      {required this.title, required this.errorText, required this.buttonText});

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        child: Column(children: [
          EsCheckBox(
            title: EsOrdinaryText(
               title,
            ),
            validator: (value) {
              if (!value!) {
                return errorText;
              }
            },
            onSaved: (bool? newValue) {},
          ),
          EsOrdinaryButton(
              onTap: () {
                _formkey.currentState?.validate();
              },
              text: buttonText)
        ]));
  }
}

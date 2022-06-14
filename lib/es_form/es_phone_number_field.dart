import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:validators/validators.dart';

class EsPhoneNumberField extends StatefulWidget {
  final validator;

  const EsPhoneNumberField({
    Key? key,
    this.validator
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsPhoneNumberField();
  }
}

class _EsPhoneNumberField extends State<EsPhoneNumberField> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '+98-###-###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
      String _name = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // textAlign: TextAlign.left,
      validator: widget.validator,
      inputFormatters: [maskFormatter],
      keyboardType: TextInputType.number,
      onChanged: (text) => setState(() => _name = text),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        // border:UnderlineInputBorder(
        //   borderRadius: BorderRadius.circular(25),
        // ),

        labelText: "Phone Number:",
        hintText: " +98",
      ),
    );
  }
}

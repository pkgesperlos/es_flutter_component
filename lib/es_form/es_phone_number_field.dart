import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EsPhoneNumberField extends StatefulWidget {
  const EsPhoneNumberField({Key? key}) : super(key: key);

  @override
  _EsPhoneNumberFieldState createState() => _EsPhoneNumberFieldState();
}

class _EsPhoneNumberFieldState extends State<EsPhoneNumberField> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: '+98-###-###-##-##',

      filter: { "#": RegExp(r'[0-9]') },
      type: MaskAutoCompletionType.lazy
  );
  @override
  Widget build(BuildContext context) {
    return TextField(

        inputFormatters: [maskFormatter],

    );
  }
}

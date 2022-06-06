import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EsShabaNumberField extends StatefulWidget {
  const EsShabaNumberField({Key? key}) : super(key: key);

  @override
  _EsShabaNumberFieldState createState() => _EsShabaNumberFieldState();
}

class _EsShabaNumberFieldState extends State<EsShabaNumberField> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: 'IR-####-####-####-####-####-####',

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

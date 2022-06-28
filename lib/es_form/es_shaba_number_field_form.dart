import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:validators/validators.dart';

class EsShabaNumberFieldForm extends StatefulWidget {
  final validator;

  const EsShabaNumberFieldForm({Key? key, this.validator}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsShabaNumberFieldForm();
  }
}

class _EsShabaNumberFieldForm extends State<EsShabaNumberFieldForm> {
  var maskFormatter = new MaskTextInputFormatter(
      mask: 'IR-####-####-####-####-####-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
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

        labelText: "Shaba Number:",
        hintText: " IR",
      ),
    );
  }
}

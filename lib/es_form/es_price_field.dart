import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pattern_formatter/numeric_formatter.dart';
import 'package:validators/validators.dart';

class EsPriceField extends StatefulWidget {
  final validator;

  const EsPriceField({
    Key? key,
    this.validator
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsPriceField();
  }
}

class _EsPriceField extends State<EsPriceField> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      validator: widget.validator,
      keyboardType: TextInputType.number,
      inputFormatters: [
        ThousandsFormatter(allowFraction: true)
      ],
      onChanged: (text) => setState(() => _name = text),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        // border:UnderlineInputBorder(
        //   borderRadius: BorderRadius.circular(25),
        // ),

        labelText: "Price:",
        hintText: "",
      ),
    );
  }
}

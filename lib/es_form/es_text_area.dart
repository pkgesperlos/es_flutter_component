import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class EsTextArea extends StatefulWidget {
  final String type;
  final String hint;
  final validator;

  const EsTextArea({Key? key, required this.type, this.hint = "", this.validator})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsTextArea();
  }
}

class _EsTextArea extends State<EsTextArea> {

  String _name = '';


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 8,
      validator: widget.validator,
      onChanged: (text) => setState(() => _name = text),
      decoration: InputDecoration(
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        // border:UnderlineInputBorder(
        //   borderRadius: BorderRadius.circular(25),
        // ),

        labelText: widget.type,
        hintText: widget.hint,
      ),
    );
  }
}

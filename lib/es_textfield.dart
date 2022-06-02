import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class EsTextField extends StatefulWidget {
  final String type;
  final String hint;
  final validator;

  const EsTextField({Key? key, required this.type, this.hint = "", this.validator})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsTextField();
  }
}

class _EsTextField extends State<EsTextField> {

  String _name = '';


  @override
  Widget build(BuildContext context) {
    return TextFormField(
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

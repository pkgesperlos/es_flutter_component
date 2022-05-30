import 'package:flutter/material.dart';

class EsTextField extends StatefulWidget {
  final String type;
  final String hint;

  const EsTextField({Key? key, required this.type, this.hint = ""})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsTextField();
  }
}

class _EsTextField extends State<EsTextField> {
  final _formKey = GlobalKey<FormState>();

  // declare a variable to keep track of the input text
  String _name = '';


  // declare a variable to keep track of the input text

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _formKey,
      validator: (text) {
        if (text == null || text.isEmpty) {
          return 'Can\'t be empty';
        }
        if (text.length < 4) {
          return 'Too short';
        }
        return null;
      },
      onChanged: (text) => setState(() => _name = text),
      decoration: InputDecoration(
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),

        labelText: widget.type,
        hintText: widget.hint,
      ),
    );
  }
}

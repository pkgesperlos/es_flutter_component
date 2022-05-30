import 'package:flutter/material.dart';

class ExTextField extends StatefulWidget {
  final String type;
  final String hint;

  const ExTextField({Key? key, required this.type, this.hint = ""})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ExTextField();
  }
}

class _ExTextField extends State<ExTextField> {
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
        border: const OutlineInputBorder(),
        labelText: widget.type,
        hintText: widget.hint,
      ),
    );
  }
}

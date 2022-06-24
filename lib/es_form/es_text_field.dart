import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class EsTextField extends StatefulWidget {
  final String type;
  final String hint;
  final icon;
  final validator;
  final controller;

  const EsTextField(
      {Key? key,
      required this.type,
      this.hint = "",
      this.validator,
      this.controller,
      this.icon})
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
      // scrollPadding: EdgeInsets.symmetric(vertical: Constants.paddingDimension),

      validator: widget.validator,
      controller: widget.controller,
      onChanged: (text) => setState(() => _name = text),
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(vertical: Constants.paddingDimension
                // ,horizontal:Constants.paddingDimension
                ),
        prefixIcon: widget.icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Constants.borderRadiusDimension),
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

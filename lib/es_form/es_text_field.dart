import 'package:es_flutter_component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class EsTextField extends StatefulWidget {
  final String type;
  final hint;
  final icon;
  final validator;
  final controller;
  final fillColor;
  final hintColor;
  final borderColor;
  final double borderRadiusDimension;

  const EsTextField({
    Key? key,
    required this.type,
    this.hint,
    this.icon,
    this.validator,
    this.controller,
    this.fillColor = Constants.textFieldFilledColor,
    this.hintColor = Constants.ordinaryText,
    this.borderColor = Constants.ordinaryText,
    this.borderRadiusDimension = Constants.borderRadiusDimension,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsTextField();
  }
}

class _EsTextField extends State<EsTextField> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.textFieldHight,
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        onChanged: (text) => setState(() => _name = text),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: widget.hintColor),
          filled: true,
          fillColor: widget.fillColor,
          contentPadding: EdgeInsets.symmetric(
              vertical: Constants.paddingDimension,
              horizontal: Constants.paddingDimension),

          prefixIcon: widget.icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadiusDimension),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadiusDimension),
              borderSide: BorderSide(color: widget.borderColor)),
          // border:UnderlineInputBorder(
          //   borderRadius: BorderRadius.circular(25),
          // ),

          labelText: widget.type,
          hintText: widget.hint,
        ),
      ),
    );
  }
}

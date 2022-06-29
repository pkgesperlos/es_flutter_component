import 'dart:async';

import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:validators/validators.dart';

import '../../resources/Constants/dims.dart';
import '../../resources/Constants/styles.dart';


class EsSearchTextField extends StatefulWidget {
  final String? hint;
  final Icon? icon;
  final Function(String text)? onChange;
  final TextEditingController? controller;
  final Color? fillColor;
  final Color? hintColor;
  final Color? borderColor;
  final double borderRadiusDimension;
  final Duration duration;

  const EsSearchTextField({
    Key? key,
    this.hint,
    this.icon,
    this.onChange,
    this.controller,
    this.fillColor = Constants.textFieldFilledColor,
    this.hintColor = Constants.ordinaryText,
    this.borderColor = Colors.white,
    this.borderRadiusDimension = Constants.borderRadiusDimension,
    this.duration = const Duration(seconds: 2)
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _EsSearchTextField();
  }
}

class _EsSearchTextField extends State<EsSearchTextField> {
  late String _startText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.textFieldHight,
      child: TextField(
        controller: widget.controller,
        onChanged: (String text) {
          _startText = text;

          Timer.periodic(widget.duration, (timer) {
            timer.cancel();
            if (_startText.length == text.length ) {

              try{
                widget.onChange!(_startText);
              }
              catch(e){

              }
            }
          });


        },
        style: Styles.inputStyle(context),
        decoration: InputDecoration(
          hintStyle: TextStyle(color: widget.hintColor),
          filled: true,
          fillColor: Constants.textFieldFilledColor,
          contentPadding: EdgeInsets.symmetric(
              vertical: Constants.paddingDimension,
              horizontal: Constants.paddingDimension),

          prefixIcon: widget.icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadiusDimension),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.borderRadiusDimension),
              borderSide: BorderSide(color: widget.borderColor!)),
          // border:UnderlineInputBorder(
          //   borderRadius: BorderRadius.circular(25),
          // ),

          // labelText: widget.type,
          hintText: widget.hint,
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:validators/validators.dart';

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
  bool _isTying = false;
  late String _text;
  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.textFieldHight,
      child: TextField(
        controller: widget.controller,
        onChanged: (String text) {
          _text = text;

          _timer = Timer.periodic(widget.duration, (timer) {
            if (_text.length > text.length)
              _isTying = true;
            else {
              _isTying = false;
              _timer.cancel();
              try{
                widget.onChange!(_text);
              }
              catch(e){

              }

            }
          });

          _isTying = true;
        },
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

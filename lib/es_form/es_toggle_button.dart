import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ESToggleButton extends StatefulWidget {
  @override
  _ESToggleButtonState createState() {
    return _ESToggleButtonState();
  }
}

class _ESToggleButtonState extends State<ESToggleButton> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: state,
      onChanged: (value) {
        state = value;
        setState(
              () {},
        );
      },
      // thumbColor: CupertinoColors.destructiveRed,
      // activeColor: CupertinoColors.activeBlue,
    );
  }
}

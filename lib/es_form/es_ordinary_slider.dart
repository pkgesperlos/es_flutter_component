import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsOrdinarySlider extends StatefulWidget {
  double value;

  EsOrdinarySlider({Key? key, this.value = 10}) : super(key: key);

  @override
  _EsOrdinarySliderState createState() => _EsOrdinarySliderState();
}

class _EsOrdinarySliderState extends State<EsOrdinarySlider> {
  double _value = 10;

  @override
  Widget build(BuildContext context) {
    return CupertinoSlider(
        max: 100,
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        });
    // return Slider(
    //   min: 0.0,
    //   max: 100.0,
    //   value: _value,
    //   divisions: 10,
    //   label: '${_value.round()}',
    //   onChanged: (value) {
    //     setState(() {
    //       _value = value;
    //     });
    //   },
    // );
  }
}

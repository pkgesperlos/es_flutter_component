import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsRengedSlider extends StatefulWidget {
  double startValue;
  double endValue;

  EsRengedSlider({Key? key, this.startValue = 10,this.endValue=90}) : super(key: key);

  @override
  _EsRengedSliderState createState() => _EsRengedSliderState();
}

class _EsRengedSliderState extends State<EsRengedSlider> {
  double _startValue=10;
  double _endValue=90;
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      min: 0.0,
      max: 100.0,
      values: RangeValues(_startValue, _endValue),
      onChanged: (values) {
        setState(() {
          _startValue = values.start;
          _endValue = values.end;
        });
      },
    );
  }
}

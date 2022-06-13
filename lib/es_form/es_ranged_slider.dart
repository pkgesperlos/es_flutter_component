import 'package:es_flutter_component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../es_text/es_ordinary_text.dart';

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
    return Column(
      children: [
        RangeSlider(
          min: 0.0,
          max: 100.0,
          values: RangeValues(_startValue, _endValue),

          activeColor: Constants.buttonColor,
          inactiveColor: Constants.sidebarColor,

          onChanged: (values) {
            setState(() {
              _startValue = values.start;
              _endValue = values.end;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [EsOrdinaryText(data:"Start Value:" +_startValue.round().toString()),
          EsOrdinaryText(data:"End Value:" +_endValue.round().toString()),],)
      ],
    );
  }
}

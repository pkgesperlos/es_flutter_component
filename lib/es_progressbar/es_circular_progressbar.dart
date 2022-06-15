import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class EsCircularProgressbar extends StatefulWidget {
  @override
  _EsCircularProgressbar createState() => _EsCircularProgressbar();
}

class _EsCircularProgressbar extends State<EsCircularProgressbar> {
  double percent = 0.0;

  @override
  void initState() {
    late Timer timer;
    timer = Timer.periodic(Duration(milliseconds:1000),(_){
      setState(() {
        percent+=10;
        if(percent > 100){
          timer.cancel();
          percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return CircularPercentIndicator(
      radius: 120.0,
      lineWidth: 7.0,
      animation: false,
      percent: percent/100,
      center: Text(
        percent.toString() + "%",
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.black),
      ),
      backgroundColor: Colors.grey,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Colors.indigo,
    );
  }
}
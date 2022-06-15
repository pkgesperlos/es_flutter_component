import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class EsLinearProgressbar extends StatefulWidget {
  @override
  _EsLinearProgressbar createState() => _EsLinearProgressbar();
}

class _EsLinearProgressbar extends State<EsLinearProgressbar> {

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


    return LinearPercentIndicator(
      animation: false,
      animationDuration: 1000,
      lineHeight: 20.0,
      percent:percent/100,
      center: Text(
        percent.toString() + "%",
        style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
            color: Colors.black),
      ),
      linearStrokeCap: LinearStrokeCap.roundAll,
      progressColor: Colors.indigo,
      backgroundColor: Colors.grey[300],
    );
  }
}




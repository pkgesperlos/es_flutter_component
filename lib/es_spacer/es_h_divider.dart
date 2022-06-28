import 'package:es_flutter_component/images/Constants/styles.dart';
import 'package:flutter/material.dart';

class EsHDivider extends StatelessWidget{

  final double top;
  final double bottom;


  EsHDivider({this.top = 0, this.bottom = 0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: top,bottom: bottom),
      child: Container(height: 1,color: Styles.t2Color,),
    );
  }
}
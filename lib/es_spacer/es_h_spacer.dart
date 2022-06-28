import 'package:es_flutter_component/images/Constants/dims.dart';
import 'package:flutter/material.dart';


class EsHSpacer extends StatelessWidget{

  final bool big;
  final int factor;




  EsHSpacer({this.big = false,this.factor=1});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: big?factor*Dims.h1Padding(context):factor*Dims.h2Padding(context),
    );
  }
}
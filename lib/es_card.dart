import 'package:flutter/material.dart';

import 'images/Constants/dims.dart';
import 'images/Constants/styles.dart';

class EsCard extends StatelessWidget {

  final child;
  EdgeInsetsGeometry ?padding;
  EdgeInsetsGeometry ?margin;

  final Color color;
  EsCard({Key? key,this.child,this.padding,this.margin,this.color=Styles.t6Color}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    defaults(context);


    return  Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(Dims.h2BorderRadius(context))),
          color: color
      ),
      child: child,
    );
  }


  void defaults(context) {
    padding=EdgeInsets.all(Dims.h1Padding(context));
  }
}

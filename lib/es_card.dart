import 'package:flutter/material.dart';

import 'images/Constants/dims.dart';
import 'images/Constants/styles.dart';

class EsCard extends StatefulWidget {
  final cardWidget;
   double ?padding;
   final Color color;
  EsCard({Key? key,this.cardWidget,this.padding,this.color=Styles.t6Color}) : super(key: key);

  @override
  _EsCardState createState() => _EsCardState();
}

class _EsCardState extends State<EsCard> {
  @override
  Widget build(BuildContext context) {
    defaults(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal:widget.padding!,
        vertical: widget.padding!,
      ),
      // margin: EdgeInsets.all( Dims.h1Padding(context),),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(Dims.h2BorderRadius(context))),
          color: widget.color
      ),
      child: widget.cardWidget,
    );
  }

  void defaults(context) {
    widget.padding=Dims.h1Padding(context);
  }
}

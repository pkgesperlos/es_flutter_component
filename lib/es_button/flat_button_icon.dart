import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';

import '../images/Constants/styles.dart';


///this class is a customized flat button that use in whole of app
class FlatButtonIcon extends StatefulWidget {
  VoidCallback? onTap;
  String? text = "";
  IconData icon;
  Color textColor = Colors.black;
  final borderColor;
  Color fillColor = Colors.white;
  Color iconColor;
  bool useIcon;
  bool useShadow;
  bool needPadding;

  FlatButtonIcon(
      {this.onTap,
        this.text,
        this.icon = Icons.add,
        this.textColor=Colors.black,
        this.borderColor,
        this.iconColor =Colors.black,
        this.fillColor = Colors.white,
        this.useIcon = true,
        this.useShadow = true,
        this.needPadding = true});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FlatButtonIconState();
  }
}

class FlatButtonIconState extends State<FlatButtonIcon> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntrinsicWidth(
      child: Container(
        decoration: widget.useShadow
            ? Styles.cardBoxDecoration()
            : null,
        child: FlatButton(
          onPressed: widget.onTap,
          color: widget.fillColor,
          shape: OutlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor?? Colors.white),
            borderRadius: BorderRadius.circular(8),),
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              widget.useIcon
                  ? Icon(
                widget.icon,
                size: 24,
                color: widget.iconColor == null
                    ? Colors.white
                    : widget.iconColor,
              )
                  : SizedBox(width: 24,),
              Expanded(
                child: EsOrdinaryText(
                  data: widget.text!,
                  color: widget.textColor,
                  align: TextAlign.center,
                ),
              ),
              SizedBox(width: 24,),
            ],
          ),
        ),
      ),
    );
  }
}

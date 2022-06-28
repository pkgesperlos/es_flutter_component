import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';

import '../images/Constants/dims.dart';
import '../images/Constants/styles.dart';

///this class is a customized flat button that use in whole of app
class EsIconButton extends StatefulWidget {

  VoidCallback? onTap;
  IconData? icon;
  Color textColor = Styles.t6Color;
  Color? borderColor;
  Color fillColor = Styles.primaryColor;
  Color iconColor;
  double? size;
  bool useShadow;
  bool usePadding;

  EsIconButton(
      this.icon ,
      {this.onTap,
      this.textColor = Styles.t6Color,
      this.borderColor,
      this.iconColor = Styles.t6Color,
      this.fillColor = Styles.primaryColor,
      this.useShadow = true,
      this.usePadding = true,
      this.size,
      });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EsIconButtonState();
  }
}

class EsIconButtonState extends State<EsIconButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntrinsicHeight(
      child: IntrinsicWidth(
        child: Container(
          decoration: widget.useShadow ? Styles.cardBoxDecoration() : null,
          child: InkWell(
            onTap: widget.onTap,
            child: Container(
              decoration: BoxDecoration(
                color: widget.fillColor,
                border: border(),
                borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: Dims.h2Padding(context),
                  vertical: Dims.h2Padding(context)),
              child: Icon(
                widget.icon,
                size: widget.size ??Dims.h1FontSize(context),
                color: widget.iconColor == null
                    ? Colors.white
                    : widget.iconColor,
              )
            ),
          ),
        ),
      ),
    );
  }

 border() {

    if(widget.borderColor == null){
      return null;
    }else{
      return Border.all(color: widget.borderColor ?? Colors.white);
    }

  }
}

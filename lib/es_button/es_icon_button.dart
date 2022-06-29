import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../resources/Constants/dims.dart';
import '../resources/Constants/enums.dart';
import '../resources/Constants/styles.dart';

///this class is a customized flat button that use in whole of app
class EsIconButton extends StatefulWidget {
  
  VoidCallback? onTap;
  IconData? icon;
  Color? borderColor;
  Color? fillColor;
  Color iconColor;
  double? size;
  bool useShadow;
  bool usePadding;

  EsIconButton(
      this.icon,{
    required this.onTap,

    this.borderColor,
    this.iconColor = Styles.t6Color,
    this.fillColor = Styles.primaryColor,
    this.useShadow = false,
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
  late Color? _hoverColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // if(widget.fillColor == ButtonColor.primary)
    //   _hoverColor = ButtonColor.primary[100];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntrinsicHeight(
      child: IntrinsicWidth(
        child: Container(
          decoration:
              widget.useShadow ? Styles.cardBoxDecoration(context) : null,
          child: Material(
            color: widget.fillColor ?? ButtonColor.primary,
            borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              hoverColor: Colors.black.withOpacity(.1),
              onTap: widget.onTap,
              child: Container(
                decoration: BoxDecoration(
                  border: border(),
                  borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: Dims.h2Padding(context),
                    vertical: Dims.h2Padding(context)),
                child:  Icon(
                  widget.icon,
                  size: widget.size ?? ButtonSize.ordinary(context),
                  color: widget.iconColor == null
                      ? Colors.white
                      : widget.iconColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  border() {
    if (widget.borderColor == null) {
      return null;
    } else {
      return Border.all(color: widget.borderColor ?? ButtonColor.primary);
    }
  }
}


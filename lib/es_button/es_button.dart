import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../resources/Constants/dims.dart';
import '../resources/Constants/enums.dart';
import '../resources/Constants/styles.dart';

///this class is a customized flat button that use in whole of app
class EsButton extends StatefulWidget {
  String? text = "";
  VoidCallback? onTap;
  IconData? icon;
  Color textColor = Styles.t6Color;
  Color? borderColor;
  Color? fillColor;
  Color iconColor;
  double? size;
  bool useShadow;
  bool usePadding;
  ButtonDirection iconSide;

  EsButton({
    required this.onTap,
    required this.text,
    this.icon,
    this.textColor = Styles.t6Color,
    this.borderColor,
    this.iconColor = Styles.t6Color,
    this.fillColor = Styles.primaryColor,
    this.useShadow = false,
    this.usePadding = true,
    this.size,
    this.iconSide=ButtonDirection.start
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EsButtonState();
  }
}

class EsButtonState extends State<EsButton> {
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
                    horizontal: Dims.h1Padding(context),
                    vertical: Dims.h2Padding(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  textDirection:widget.iconSide==ButtonDirection.start?TextDirection.ltr:TextDirection.rtl ,

                  children: <Widget>[
                    widget.icon == null
                        ? SizedBox(
                            width: 0,
                          )
                        : Icon(
                            widget.icon,
                            size: widget.size ?? ButtonSize.ordinary(context),
                            color: widget.iconColor == widget.textColor
                                ? Colors.white
                                : widget.iconColor,
                          ),
                    Expanded(
                      child: EsOrdinaryText(
                        widget.text!,
                        size: widget.size ?? ButtonSize.ordinary(context),
                        color: widget.textColor,
                        align: TextAlign.center,
                      ),
                    ),

                  ],
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


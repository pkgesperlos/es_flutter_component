import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_icon_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../es_text/es_title.dart';
import '../resources/Constants/dims.dart';
import '../resources/Constants/enums.dart';
import '../resources/Constants/styles.dart';

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
  bool useConfidence;
  ButtonDirection iconSide;
  bool isLoading;
  Color loadingColor;
  bool isBold;
  bool clickable;

  EsButton(
      {this.onTap,
      required this.text,
      this.icon,
      this.textColor = Styles.t6Color,
      this.borderColor,
      this.iconColor = Styles.t6Color,
      this.fillColor = Styles.primaryColor,
      this.useShadow = false,
      this.size,
      this.isLoading = false,
      this.loadingColor = Colors.white,
      this.iconSide = ButtonDirection.start,
      this.isBold = false,
      this.clickable = true,
      this.useConfidence = false});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EsButtonState();
  }
}

class EsButtonState extends State<EsButton> {
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _isLoading = widget.isLoading;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: widget.useShadow ? Styles.cardBoxDecoration(context) : null,
      child: Material(
        color: widget.fillColor ?? ColorAsset.primary,
        borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
        clipBehavior: Clip.antiAlias,
        child: IgnorePointer(
          ignoring: !widget.clickable,
          child: InkWell(
            hoverColor: Colors.black.withOpacity(.1),
            onTap: onTap,
            child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: widget.size == null
                        ? Dims.h0Padding(context)
                        : widget.size! / 2 + Dims.h0Padding(context),
                    vertical: Dims.h1Padding(context)),
                decoration: BoxDecoration(
                  border: border(),
                  borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Visibility(
                        visible: !_isLoading,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: EsIconText(
                          widget.text ?? "",
                          icon: widget.icon,
                          isBold: widget.isBold,
                          color: widget.textColor,
                        )),
                    Visibility(
                        visible: _isLoading,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: Container(
                          width: Dims.h1FontSize(context),
                          height: Dims.h1FontSize(context),
                          child: CircularProgressIndicator(
                            color: widget.loadingColor,
                          ),
                        )),
                  ],
                )),
          ),
        ),
      ),
    );
  }

  border() {
    if (widget.borderColor == null) {
      return null;
    } else {
      return Border.all(color: widget.borderColor ?? ColorAsset.primary);
    }
  }

  onTap() {
    if (widget.useConfidence) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                alignment: Alignment.center,
                title: EsTitle("اخطار"),
                content: Container(
                  height: 80,
                  child: EsOrdinaryText("آیا از انجام این عملیات مطمئنید؟"),
                ),
                actions: [
                  EsButton(
                    onTap: () {
                      widget.onTap!();
                    },
                    text: "بله",
                    fillColor: ColorAsset.danger,
                  ),
                  EsButton(
                    onTap: () {},
                    text: "لغو",
                  ),
                ],
              ));
    } else {
      widget.onTap!();
    }
  }

  @override
  void didUpdateWidget(covariant EsButton oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    _isLoading = widget.isLoading;
  }
}

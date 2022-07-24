import 'package:es_flutter_component/es_alert/es_alerts.dart';
import 'package:flutter/material.dart';

import '../resources/Constants/dims.dart';
import '../resources/Constants/styles.dart';

///this class is a customized flat button that use in whole of app
class EsIconButton extends StatefulWidget {
  VoidCallback? onTap;
  IconData? icon;
  Color? borderColor;
  Color? fillColor;
  Color iconColor;
  Color? loadingColor;
  double? size;
  bool useShadow;
  bool useConfidence;
  bool isLoading;
  bool clickable;
  EsIconButton(this.icon, {
    required this.onTap,
    this.borderColor,
    this.iconColor = Styles.t6Color,
    this.fillColor = Styles.primaryColor,
    this.useShadow = false,
    this.useConfidence = false,
    this.size,
    this.isLoading = false,
    this.clickable = true,
    this.loadingColor = Colors.white,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EsIconButtonState();
  }
}

class EsIconButtonState extends State<EsIconButton> {
  late Color? _hoverColor;
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
      decoration:
      widget.useShadow ? Styles.cardBoxDecoration(context) : null,
      child: Material(
        color: widget.fillColor ?? ColorAsset.primary,
        borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
        clipBehavior: Clip.antiAlias,
        child:
        IgnorePointer(
        ignoring: !widget.clickable,
        child: InkWell(
          hoverColor: Colors.black.withOpacity(.1),
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              border: border(),
              borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: Dims.h2Padding(context),
                vertical: Dims.h2Padding(context)),
            child: _isLoading ? Container(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                color: widget.loadingColor,
              ),):Icon(
              widget.icon,
              size: widget.size ?? ButtonSize.ordinary(context),
              color: widget.iconColor == null
                  ? Colors.white
                  : widget.iconColor,
            ),
          ),
        ),),
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
      EsAlerts.confidence(context,
          title: "اخطار",
          content: "آیا از انجام این عملیات مطمئنید؟", onConfirmPress: () {
            widget.onTap!();
          });
    } else {
      widget.onTap!();
    }
  }

  @override
  void didUpdateWidget(covariant EsIconButton oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    _isLoading = widget.isLoading;
  }
}

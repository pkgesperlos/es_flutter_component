import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../es_text/es_title.dart';
import '../resources/Constants/dims.dart';
import '../resources/Constants/styles.dart';

///this class is a customized flat button that use in whole of app
class EsBorderButton extends StatefulWidget {
  String? text = "";
  VoidCallback? onTap;
  IconData? icon;
  Color textColor = Styles.t6Color;
  Color? borderColor;
  Color iconColor;
  double? size;
  bool useShadow;
  bool useConfidence;

  EsBorderButton({
    required this.onTap,
    required this.text,
    this.icon,
    this.textColor = Styles.t6Color,
    this.borderColor,
    this.iconColor = Styles.t6Color,
    this.useShadow = false,
    this.size,
    this.useConfidence = false
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new EsBorderButtonState();
  }
}

class EsBorderButtonState extends State<EsBorderButton> {

  late Color? _hoverColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    // if(widget.fillColor == ColorAsset.primary)
    //   _hoverColor = ColorAsset.primary[100];

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IntrinsicHeight(
      child: IntrinsicWidth(
        child: Container(
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
            clipBehavior: Clip.antiAlias,
            child: InkWell(

              hoverColor: Colors.black.withOpacity(.1),
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: widget.borderColor ?? ColorAsset.primary),
                  borderRadius: BorderRadius.circular(Dims.h2Padding(context)),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: Dims.h2Padding(context),
                    vertical: Dims.h2Padding(context)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    widget.icon == null
                        ? SizedBox(
                      width: 24,
                    )
                        : Icon(
                      widget.icon,
                      size: widget.size ?? ButtonSize.ordinary(context),
                      color: widget.iconColor == null
                          ? Colors.white
                          : widget.iconColor,
                    ),
                    Expanded(
                      child: EsOrdinaryText(
                        widget.text!,
                        size: widget.size ?? ButtonSize.ordinary(context),
                        color: widget.borderColor ?? ColorAsset.primary,
                        align: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: 24,
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



  onTap() {

    if(widget.useConfidence){

      showDialog(context: context,builder: (context)=>AlertDialog(
        alignment: Alignment.center,
        title: EsTitle("??????????"),
        content: Container(
          height: 80,child: EsOrdinaryText("?????? ???? ?????????? ?????? ???????????? ????????????????"),),
        actions: [
          EsButton(onTap: (){
            widget.onTap!();
          }, text: "??????",fillColor: ColorAsset.danger,),
          EsButton(onTap: (){

          }, text: "??????",),

        ],
      ));

    }else{
      widget.onTap!();
    }

  }

}

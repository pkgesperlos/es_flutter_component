
import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:es_flutter_component/images/Constants/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsLoadingButton extends StatelessWidget {

  VoidCallback onTap;
  Color color;
  Color iconColor;
  Color? borderColor;
  Color buttonShadowColor;
  double? size;


  EsLoadingButton({

    required this.onTap,
    this.color = Styles.primaryColor,
    this.iconColor =Styles.t6Color,
    this.borderColor,
    this.buttonShadowColor =Styles.t4Color,
    this.size,
    t
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          width: size,
          height: size,
          padding: EdgeInsets.symmetric(
              vertical: size! / 4, horizontal: size! / 4),

          child: CircularProgressIndicator(color:iconColor,),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(size! / 3)),
              border: border(),
              boxShadow: [
                BoxShadow(
                    offset: Offset(2, 2),
                    color: buttonShadowColor,
                    spreadRadius: 2,
                    blurRadius: 2)
              ]),
        ));
  }
  border() {

    if(borderColor == null){
      return null;
    }else{
      return Border.all(color: borderColor ?? Colors.white);
    }

  }
}


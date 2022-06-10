import 'package:es_flutter_component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsIconButton extends StatelessWidget {
  IconData icon;
  VoidCallback onPressed;

  EsIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Constants.shadowGray,
        // radius: 300,
        // splashFactory: InkSplash.splashFactory,

        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Icon(icon,color: Constants.shadowGray,),
          decoration: BoxDecoration(
              color: Constants.iconButton,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: Constants.borderGray, width: 2),
              boxShadow: [
                BoxShadow(
                  offset:Offset (2,2),
                    color: Constants.shadowGray,
                    spreadRadius: 2,
                    blurRadius: 2)
              ]),
        ));
  }
}

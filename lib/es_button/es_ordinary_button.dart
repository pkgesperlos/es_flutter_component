import 'package:es_flutter_component/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsOrdinaryButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;

  EsOrdinaryButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Text(
            text,
            style: TextStyle(
                color: Constants.shadowGray,
            fontSize: 20
            ),
          ),
          decoration: BoxDecoration(
              color: Constants.button,
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

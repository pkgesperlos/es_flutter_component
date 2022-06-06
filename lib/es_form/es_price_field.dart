import 'package:flutter/material.dart';

import 'package:pattern_formatter/pattern_formatter.dart';

class EsPriceField extends StatefulWidget {
  const EsPriceField({Key? key}) : super(key: key);

  @override
  _EsPriceFieldState createState() => _EsPriceFieldState();
}

class _EsPriceFieldState extends State<EsPriceField> {

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        ThousandsFormatter(allowFraction: true)
      ],
    );
  }
}

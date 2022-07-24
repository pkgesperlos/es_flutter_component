import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_form/es_drop_down_button/es_simple_model_drop_down_form.dart';

import 'package:es_flutter_component/es_form/es_radio_button.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_text_field.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'es_form/es_drop_down_button/es_simple_model_drop_down.dart';
import 'es_form/es_text_field/es_text_field_hj.dart';
import 'es_image/es_svg_icon.dart';

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {

  bool _isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 2000),(){
      setState(() {
        _isLoading = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return EsButton(onTap: () {

    }, text: 'salam',isLoading: true,);
  }
}

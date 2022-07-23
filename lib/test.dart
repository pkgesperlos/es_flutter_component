

import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_form/es_drop_down_button/es_simple_model_drop_down_form.dart';

import 'package:es_flutter_component/es_form/es_radio_button.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_specific_text_field.dart';
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
  // EsFilePickerController controller = EsFilePickerController();
  TextEditingController t = TextEditingController();
  EditTextController t1 = EditTextController();

 final _key=GlobalKey<FormState>();

String categoryId="";


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
           EsSpecificTextField.checker(
             fillColor: Colors.amber,
             hint: "شماره موبایل",

             controller: t,
             editTextController: t1,
           ),
            EsTextField(
              border: true,
              hint: "شماره موبایل",
              fillColor: Colors.black38,
              obscure: false,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.amber,
                filled: true
              ),
            )


          ],
        ),
      ),
    );
  }
}

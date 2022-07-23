

import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_form/es_drop_down_button/es_simple_model_drop_down_form.dart';

import 'package:es_flutter_component/es_form/es_text_field/es_text_field.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'es_form/es_drop_down_button/es_simple_model_drop_down.dart';
import 'es_form/es_text_field/es_icon_text_field.dart';
import 'es_form/es_text_field/es_specific_text_field.dart';
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
           // EsSpecificTextField.checker(
           //   // fillColor: Colors.amber,
           //   borderColor: Colors.red,
           //   hint: "شماره موبایل",
           //
           //   controller: t,
           //   editTextController: t1,
           // ),

            Container(
              decoration: BoxDecoration(
                border: Border.all(color:Colors.black26)
              ),
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                    // border: InputBorder.none,
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Container(
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border(right: BorderSide(color:Color(0xffAAAFB6)))
                        ),
                        child: EsTitle("+98",)
                    )
                ),
              ),
            ),
            EsIconTextField.checker(
              hint: "شماره موبایل",

              controller: t,
              editTextController: t1, icon: EsTitle("98+",),
            )

          ],
        ),
      ),
    );
  }
}

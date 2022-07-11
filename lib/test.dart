

import 'package:es_flutter_component/es_button/es_button.dart';

import 'package:es_flutter_component/es_form/es_radio_button.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'es_form/es_text_field/es_text_field_hj.dart';
import 'es_image/es_svg_icon.dart';



class Test extends StatelessWidget {
  // EsFilePickerController controller = EsFilePickerController();

  TextEditingController t = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            IntrinsicWidth(child: EsTextFieldHj(

              // type: "عنوان چک لیست:",
              hint: "عنوان چک لیست:",
              // hintColor: Styles.t3Color,
              // borderColor:Styles.t3Color ,
              // fillColor:Styles.t6Color ,

              controller: t, type: '',
              validator: (value){
                if (value.lenght<1){
                  return "لطفا فیلد را پر کنید";
                }
              },
            ),),


          ],
        ),
      ),
    );
  }
}

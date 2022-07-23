

import 'package:es_flutter_component/es_button/es_button.dart';
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
  // EsFilePickerController controller = EsFilePickerController();
  TextEditingController t = TextEditingController();

 final _key=GlobalKey<FormState>();

String categoryId="";


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // IntrinsicWidth(child: EsTextFieldHj(
            //
            //   // type: "عنوان چک لیست:",
            //   hint: "عنوان چک لیست:",
            //   // hintColor: Styles.t3Color,
            //   // borderColor:Styles.t3Color ,
            //   // fillColor:Styles.t6Color ,
            //
            //   controller: t, type: '',
            //   validator: (value){
            //     if (value.lenght<1){
            //       return "لطفا فیلد را پر کنید";
            //     }
            //   },
            // ),),
            // EsSimpleModelDropDown(
            //   list: ["item1","item2","item3",],),
      // Form(
      //   key:_key ,
      //   child: EsSimpleModelDropDownForm(
      //     // value: "categoryId",
      //     // list: snapshot.data!.source,
      //     list:  [
      //             {"_id":"1",
      //               "title":"item1"},
      //       {"_id":"2",
      //         "title":"item2"},
      //
      //      ],
      //     // initialTitle: "دسته ها:",
      //     onChange: (id) {
      //       categoryId = id;
      //       // widget.onChangeCategory(id);
      //       // _controller.onChangeCategory!(id);
      //       // print(id);
      //     }, validator: (value) { if(value.isEmpty){return "it is not ok" ;}},
      //   ),
      // ),
      //       EsButton(onTap: (){
      //         if(_key.currentState!.validate()){print("ok");}
      //       }, text: "pass")
            SizedBox(
              height: 30,
                child: EsTextField(
                  hint: "gggggg",)),
            EsRadioButton(titleList:["بله","خیر"],controller:t),
          EsButton(onTap: (){
              {print(t.text);}
            }, text: "pass")


          ],
        ),
      ),
    );
  }
}

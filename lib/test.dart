import 'dart:convert';

import 'package:es_flutter_component/es_button/es_bordered_button.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_button/es_loading_button.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_text_field_form.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';

import 'package:flutter/material.dart';

import 'es_form/es_file_picker/es_file_picker.dart';
import 'es_form/es_text_field/es_search_text_field.dart';
import 'es_form/es_text_field/es_text_field.dart';
import 'es_text/es_dotted_text.dart';
import 'es_text/es_header.dart';
import 'es_text/es_marked_text.dart';
import 'es_text/es_paragraph.dart';
import 'es_text/es_subtitle.dart';
import 'es_text/es_title.dart';

class Test extends StatelessWidget {
  EsFilePickerController controller = EsFilePickerController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // EsFilePicker(
          //   label:"انتخاب فایل",
          //   controller: controller,
          // ),
          // ElevatedButton(onPressed: (){
          //   print(controller.base64File);
          // }, child: Text("Sd"))
          // EsLabelText("data",size: 50,),
          // EsLabelText("data",),
          // EsOrdinaryText("data",size: 50,),
          // EsOrdinaryText("data",),
          EsSearchTextField(hint: "Sdasdsa",),
          EsTextField(hint: "sadsasa",),
          EsTextFieldForm(hint: "sadsasad",validator: (val){}),
          EsBorderedButton(text: "sdsa", onTap: (){}),
          EsInformationButton(text: "ASd",),
          EsBorderedButton(text: "sad", onTap: (){}),
          EsIconButton(Icons.add),
          EsLoadingButton(onTap: (){}),
          EsTitle("sdsadas"),
              EsHeader("lkjhh"),
          EsSubtitle("sdas"),
          EsFilePicker(controller: controller),
          EsDottedText("sadsad"),
          EsMarkedText("sadsad"),
          EsParagraph("Sadsad"),
          EsOrdinaryText("sadasd"),
        ],
      ),
    );
  }
}

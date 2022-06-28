import 'dart:convert';

import 'package:es_flutter_component/es_button/es_bordered_button.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_button/es_loading_button.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_text_field_form.dart';



import 'package:flutter/material.dart';

import 'es_form/es_text_field/es_search_text_field.dart';


class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
         EsSearchTextField(hint: "aa",
         onChange: (String s){

           print(s);

         },)

        ],
      ),
    );
  }
}

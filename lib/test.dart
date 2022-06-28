import 'dart:convert';

import 'package:es_flutter_component/es_button/es_bordered_button.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_button/es_loading_button.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_text_field_form.dart';



import 'package:flutter/material.dart';


class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // EsOrdinaryButton(text: "ddd",icon: Icons.star,),
          EsLoadingButton(onTap: (){},size: 40,),
          EsIconButton(Icons.star, onTap: (){},size:100,),
          EsTextFieldForm(validator: (value){},)

        ],
      ),
    );
  }
}

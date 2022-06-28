import 'dart:convert';

import 'package:es_flutter_component/es_button/es_bordered_button.dart';
import 'package:es_flutter_component/es_button/es_icon_button.dart';
import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_button/es_loading_button.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_table/es_responsive_table.dart';
import 'package:es_flutter_component/es_text/es_header.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_paragraph.dart';
import 'package:es_flutter_component/es_text/es_subtitle.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/images/Constants/constants.dart';
import 'package:flutter/material.dart';

import 'es_text/es_ordinary_text.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          EsOrdinaryButton(text: "ddd",),
          EsLoadingButton(onPressed: (){}),
          EsInformationButton(),
          EsIconButton(icon: Icons.star, onPressed: (){}),
          EsBorderedButton(text: "text", onPressed: (){})
        ],
      ),
    );
  }
}

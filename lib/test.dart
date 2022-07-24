
import 'package:es_flutter_component/es_spacer/es_h_spacer.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


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
        child: Row(
          children: [


            EsSvgIcon("assets/images/calender.svg",size:Dims.h0IconSize(context),),
            EsHSpacer(),
            EsSvgIcon("assets/images/calender.svg",size:Dims.h1IconSize(context),),
            EsSvgIcon("assets/images/migration.svg",size:Dims.h1IconSize(context),),
            EsHSpacer(),
            EsSvgIcon("assets/images/calender.svg",size:Dims.h2IconSize(context),),
            EsHSpacer(),
            EsSvgIcon("assets/images/calender.svg",size:Dims.h3IconSize(context),),
            EsSvgIcon("assets/images/favorite.svg",size:Dims.h3IconSize(context),),



          ],
        ),
      ),
    );
  }
}

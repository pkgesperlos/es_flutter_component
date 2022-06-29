import 'package:es_flutter_component/es_button/es_border_button.dart';
import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_text_field.dart';
import 'package:es_flutter_component/es_form/es_text_field/es_text_field_form.dart';
import 'package:es_flutter_component/images/Constants/dims.dart';
import 'package:es_flutter_component/images/Constants/enums.dart';
import 'package:es_flutter_component/images/Constants/styles.dart';
import 'package:flutter/material.dart';

import 'es_button/es_icon_button.dart';
import 'es_form/es_file_picker/es_file_picker.dart';
import 'es_form/es_text_field/es_search_text_field.dart';

class Test extends StatelessWidget {
  EsFilePickerController controller = EsFilePickerController();

  TextEditingController t = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            EsSearchTextField(
              hint: "Sdasdsa",
            ),
            EsTextField(
              hint: "sadsasa",
              controller: t,
            ),
            EsTextFieldForm(hint: "sadsasad", validator: (val) {}),
            EsInformationButton(),
            EsFilePicker(controller: controller),


            EsButton(onTap:(){},text:"sallam",size: ButtonSize.ordinary(context),icon: Icons.add,iconSide:ButtonDirection.end,) ,
            EsButton(onTap:(){},text:"sallam",size: ButtonSize.header(context)),
            EsButton(onTap:(){},text:"sallam",size: ButtonSize.title(context)),
            EsButton(onTap:(){},text:"sallam",size: ButtonSize.ordinary(context),fillColor: ButtonColor.primary),
            EsButton(onTap:(){},text:"sallam",size: ButtonSize.ordinary(context),fillColor: ButtonColor.danger),
            EsButton(onTap:(){},text:"sallam",size: ButtonSize.ordinary(context),fillColor: ButtonColor.dark),
            EsButton(onTap:(){},text:"sallam",size: ButtonSize.ordinary(context),fillColor: ButtonColor.disable),
            EsButton(onTap:(){},text:"sallam",size: ButtonSize.ordinary(context),fillColor: ButtonColor.success),
            EsButton(onTap:(){},text:"sallam",size: ButtonSize.ordinary(context),fillColor: ButtonColor.warning),
            EsBorderButton(onTap:(){},text:"sallam",size: ButtonSize.ordinary(context),borderColor: ButtonColor.warning),
            EsIconButton(Icons.add, onTap: () {  },),


          ],
        ),
      ),
    );
  }
}

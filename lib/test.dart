

import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
            EsSvgIcon(
              'assets/images/HistoryOutlined.svg',
              color: Colors.black,
              // size: Dims.h1IconSize(context),
            ),
            Icon(Icons.ac_unit,size: Dims.h1IconSize(context),),
            // EsButton(text: "texttext",onTap: (){},)

          ],
        ),
      ),
    );
  }
}



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
            ),
            Text('data')

          ],
        ),
      ),
    );
  }
}

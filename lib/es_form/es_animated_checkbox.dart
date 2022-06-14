import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

/////////////////////////////////
class EsAnimatedCheckBox extends StatefulWidget {
  String title;
  IconData icon;
  EsAnimatedCheckBox({Key? key,required this.title,this.icon=Icons.hourglass_empty}) : super(key: key);

  @override
  State<EsAnimatedCheckBox> createState() => _EsAnimatedCheckBox();
}

class _EsAnimatedCheckBox extends State<EsAnimatedCheckBox> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: EsOrdinaryText(data:widget.title),
      value: timeDilation != 1.0,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 5.0 : 1.0;
        });
      },
      secondary: Icon(widget.icon),
    );
  }
}
//////////////////////////////////////////





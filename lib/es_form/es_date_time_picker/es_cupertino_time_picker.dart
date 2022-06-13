import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class EsCupertinoTimePicker extends StatefulWidget {
  String title;

  EsCupertinoTimePicker({required this.title});

  @override
  State<EsCupertinoTimePicker> createState() => _EsCupertinoTimePicker();
}

class _EsCupertinoTimePicker extends State<EsCupertinoTimePicker> {


  String dataH= "07";
  String dataM= "07";
  String dataS= "07";



  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[

        EsOrdinaryButton(

            onPressed: () {
              DatePicker.showTimePicker(context, showTitleActions: true,
                  onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                setState(() {
                  dataH=date.hour.toString();
                  dataM=date.minute.toString();
                  dataS=date.second.toString();
                });
                    print('confirm $date');
                  }, currentTime: DateTime.now());
            }, text: widget.title,
            ),
        EsOrdinaryText(data:dataH+":"+dataM+":"+dataS),

      ],
    );
  }
}

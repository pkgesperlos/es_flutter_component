import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../../images/Constants/constants.dart';

class EsCupertino12HTimePicker extends StatefulWidget {
  String title;

  EsCupertino12HTimePicker({required this.title});

  @override
  State<EsCupertino12HTimePicker> createState() => _EsCupertino12HTimePicker();
}

class _EsCupertino12HTimePicker extends State<EsCupertino12HTimePicker> {


  String dataH= "07";
  String dataM= "07";
  bool PM=true;




  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[

        EsOrdinaryButton(
            onPressed: () {
              DatePicker.showTime12hPicker(context, showTitleActions: true,
                  onChanged: (date) {
                    // print('change $date in time zone ' +
                    //     date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                setState(() {
                  dataH=date.hour.toString();
                  dataM=date.minute.toString();
                  // dataM=date.isAfter(DateTime(12,00,00));

                });
                    print('confirm $date');
                  }, currentTime: DateTime.now());
            },
            text: widget.title),
        SizedBox(height: Constants.paddingDimension,),
        EsOrdinaryText(data:dataH+":"+dataM),


      ],
    );
  }
}

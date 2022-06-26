import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../../images/Constants/constants.dart';

class EsPersianDatePicker extends StatefulWidget {
  String title;

  EsPersianDatePicker({required this.title});

  @override
  State<EsPersianDatePicker> createState() => _EsPersianDatePickerState();
}

class _EsPersianDatePickerState extends State<EsPersianDatePicker> {

  DateTime data = DateTime(1410, 12, 31);
  String datamonth="9";
  int n=0;



  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[

        EsOrdinaryButton(
            text: widget.title,
            onPressed: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(1350, 1, 1),
                  maxTime: DateTime(1410, 12, 1),
                  theme: DatePickerTheme(
                      headerColor: Colors.grey,
                      backgroundColor: Colors.white,
                      itemStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                  onChanged: (date) {}, onConfirm: (date) {
                setState(() {
                  data = date.toLocal() ;
                  n=(date.month>=4)?-3:8;
                  datamonth=(date.month+n).toString();

                  print(data);
                });
                // print('confirm $date');
              }, currentTime: DateTime.now(), locale: LocaleType.fa);
            }),
        SizedBox(height: Constants.paddingDimension,),
        EsOrdinaryText(data: data.year.toString()+"/"+datamonth.toString()+"/"+data.day.toString()),
      ],
    );
  }
}

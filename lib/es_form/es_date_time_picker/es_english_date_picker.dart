import 'package:es_flutter_component/es_button/es_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import '../../images/Constants/constants.dart';

class EsEnglishDatePicker extends StatefulWidget {
  String title;

  EsEnglishDatePicker({required this.title});

  @override
  State<EsEnglishDatePicker> createState() => _EsEnglishDatePicker();
}

class _EsEnglishDatePicker extends State<EsEnglishDatePicker> {

  DateTime data = DateTime(1410, 12, 31);
  String datamonth="9";



  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[

        EsButton(
            text: widget.title,
            onTap: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(1800, 1, 1),
                  maxTime: DateTime(2040, 12, 31),
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
                  datamonth=(date.month-3).toString();

                  print(data);
                });
                // print('confirm $date');
              }, currentTime: DateTime.now(), locale: LocaleType.en);
            }),
        SizedBox(height: Constants.paddingDimension,),
        EsOrdinaryText(data.year.toString()+"/"+data.month.toString()+"/"+data.day.toString()),
      ],
    );
  }
}

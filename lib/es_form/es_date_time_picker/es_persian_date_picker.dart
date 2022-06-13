import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class EsPersianDatePicker extends StatefulWidget {
  String title;
  EsPersianDatePicker({required this.title});

  @override
  State<EsPersianDatePicker> createState() => _EsPersianDatePickerState();
}

class _EsPersianDatePickerState extends State<EsPersianDatePicker> {
  @override
  Widget build(BuildContext context) {
    DateTime data=DateTime(1410, 12, 31);
    return Column(
      children: <Widget>[

        EsOrdinaryText(data: data.toString()),
        EsOrdinaryButton(
            text: widget.title,
            onPressed: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(1350, 4, 1),
                  maxTime: DateTime(1410, 12, 31),
                  theme: DatePickerTheme(
                      headerColor: Colors.grey,
                      backgroundColor: Colors.white,
                      itemStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
                  onChanged: (date) {
                    //
                    // print('change $date in time zone ' +
                    //     date.timeZoneOffset.inHours.toString());
                  },
                  onConfirm: (date) {
                setState(() {
                  data=date;
                  print(data);
                });
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.fa);
            })
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class EsDateTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        TextButton(
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
                      doneStyle:
                      TextStyle(color: Colors.white, fontSize: 16)),
                  onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.fa);
            },
            child: Text(
              'show date picker(custom theme &date time range)',
              style: TextStyle(color: Colors.blue),
            )),
        TextButton(
            onPressed: () {
              DatePicker.showTimePicker(context, showTitleActions: true,
                  onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
            },
            child: Text(
              'show time picker',
              style: TextStyle(color: Colors.blue),
            )),
        TextButton(
            onPressed: () {
              DatePicker.showTime12hPicker(context, showTitleActions: true,
                  onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now());
            },
            child: Text(
              'show 12H time picker with AM/PM',
              style: TextStyle(color: Colors.blue),
            )),
        TextButton(
            onPressed: () {
              DatePicker.showDateTimePicker(context,
                  showTitleActions: true,
                  minTime: DateTime(2020, 5, 5, 20, 50),
                  maxTime: DateTime(2020, 6, 7, 05, 09), onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, locale: LocaleType.fa);
            },
            child: Text(
              'show date time picker (persian)',
              style: TextStyle(color: Colors.blue),
            )),
        TextButton(
            onPressed: () {
              DatePicker.showDateTimePicker(context, showTitleActions: true,
                  onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
            },
            child: Text(
              'show date time picker (English-America)',
              style: TextStyle(color: Colors.blue),
            )),
        TextButton(
            onPressed: () {
              DatePicker.showDateTimePicker(context, showTitleActions: true,
                  onChanged: (date) {
                    print('change $date in time zone ' +
                        date.timeZoneOffset.inHours.toString());
                  }, onConfirm: (date) {
                    print('confirm $date');
                  },
                  currentTime: DateTime.utc(2019, 12, 31, 23, 12, 34),
                  locale: LocaleType.fa);
            },
            child: Text(
              'show date time picker in UTC (Persian)',
              style: TextStyle(color: Colors.blue),
            )),

      ],
    );
  }
}

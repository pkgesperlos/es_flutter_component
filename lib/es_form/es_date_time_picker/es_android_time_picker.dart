import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../es_text/es_ordinary_text.dart';



class EsAndroidTimePicker extends StatefulWidget {
  String title;
  EsAndroidTimePicker({required this.title});
  @override
  _EsAndroidTimePicker createState()
  {
    return _EsAndroidTimePicker();
  }
}

class _EsAndroidTimePicker extends State<EsAndroidTimePicker> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        EsOrdinaryButton(
          onPressed: () {
            _selectTime(context);
          },
          text:widget.title ,
        ),
        EsOrdinaryText(data:"${selectedTime.hour}:${selectedTime.minute}")
      ],
    );
  }
  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,

    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}
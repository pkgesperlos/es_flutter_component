import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class EsAndroidTimePicker extends StatefulWidget {
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
        ElevatedButton(
          onPressed: () {
            _selectTime(context);
          },
          child: Text("Choose Time"),
        ),
        Text("${selectedTime.hour}:${selectedTime.minute}"),
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
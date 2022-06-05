import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:editable/editable.dart';

class EsEditableTable extends StatefulWidget {
  //row data
  // List<Map> rows = [
  //     {"name": "James Peter", "date":"01/08/2007',"month":"March","status":"beginner"},
  //     {"name": "Okon Etim", "date":"09/07/1889',"month":"January","status":"completed"},
  //     {"name": "Samuel Peter", "date":"11/11/2002',"month":"April","status":"intermediate"},
  //     {"name": "Udoh Ekong", "date":"06/3/2020',"month":"July","status":"beginner"},
  // {"name": "Essien Ikpa", "date":"12/6/1996',"month":"June","status":"completed"},
  //
  // ];
//Headers or Columns
 List<Map> headers = [
  {"title":"Name", "index": 1, "key":"name"},
  {"title":"Date", "index": 2, "key":"date"},
  {"title":"Month", "index": 3, "key":"month"},
  {"title":"Status", "index": 4, "key":"status"},
  ];




  @override
  State<StatefulWidget> createState() {
    return _EsEditableTable();
  }
}

class _EsEditableTable extends State<EsEditableTable> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editable(
        columns:widget. headers,
        rows:widget. headers,
        // showCreateButton: true,
        tdStyle: TextStyle(fontSize: 20),
        showSaveIcon: true,
        borderColor: Colors.grey.shade300,
  onSubmitted: (value) { //new line
    print(value); //you can grab this data to store anywhere
  }),
    );
  }
}

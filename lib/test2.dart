// import 'dart:convert';
//
// import 'package:flutter/material.dart';
//
// import 'es_text/es_ordinary_text.dart';
//
// class TestArray2 extends StatelessWidget {
//   // const Test2({Key? key}) : super(key: key);
//
//   List<Widget> list = [];
//   var data;
//   String prefix = '';
//   String str = '';
//
//   int i = 0;
//   List result = [
//     {"id": 1, "title": "t1", "pid": "0"},
//     {"id": 2, "title": "tt1", "pid": "1"},
//     {"id": 3, "title": "tt2", "pid": "1"},
//     {"id": 4, "title": "t1", "pid": "0"},
//     {"id": 5, "title": "tt3", "pid": "4"},
//     {"id": 6, "title": "ttt1", "pid": "5"},
//     {"id": 7, "title": "tttt1", "pid": "6"},
//     {"id": 8, "title": "ttttt1", "pid": "7"}
//   ];
//
//   var olddata = {};
//
//   @override
//   Widget build(BuildContext context) {
//     // print(result[0]);
//     return Column(
//       children: cal(result[0]),
//     );
//   }
//
//   cal(Map data) {
//     if (olddata['id'].toString() == data['pid']) {
//       prefix = '';
//       prefix = '-' + prefix;
//       str = prefix + data['title'];
//       list.add(EsOrdinaryText(data: str));
//       i++;
//       cal(result[i]);
//
//     }else{
//
//     }
//
//
//     if (data['pid'] == '0') {
//       list.add(EsOrdinaryText(data: data['title']));
//       olddata = data;
//       i++;
//       cal(result[i]);
//     }
//     return list;
//   }
// }

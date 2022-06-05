import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EsSimpleTable extends StatefulWidget {
  // int columnNum;

  // List<String> columnTitle;
  // List<String> row1Content;
  // List<String> row2Content;

  // EsSimpleTable(
  //     {required this.columnTitle,
  //     required this.columnNum,
  //     });
  int columnNum = 3;
  int rowNum = 3;

  List<String> columnTitle = ["ID", "Name", "Profession"];
  List<String> row1Content = ["ID", "Name", "Profession"];
  // List<String> row2Content = ["ID2", "Name2", "Profession2"];
  // List<String> row3Content = ["ID2", "Name2", "Profession2"];
  // List<String> row4Content = ["ID2", "Name2", "Profession2"];
  // List<String> row5Content = ["ID2", "Name2", "Profession2"];

  @override
  State<StatefulWidget> createState() {
    return _EsSimpleTable();
  }
}

class _EsSimpleTable extends State<EsSimpleTable> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[

      DataTable(
        columns: List.generate(
          widget.columnNum,
          (index) => DataColumn(
              label: Text(widget.columnTitle[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
        ),
        rows: List.generate(widget.rowNum, (index) =>  DataRow(
          cells: List.generate(widget.columnNum,
                  (index) => DataCell(Text(widget.row1Content[index]))),
        ),)
        // [
        //
        //   DataRow(
        //     cells: List.generate(widget.columnNum,
        //         (index) => DataCell(Text(widget.row2Content[index]))),
        //   ),
        //   DataRow(
        //     cells: List.generate(widget.columnNum,
        //         (index) => DataCell(Text(widget.row3Content[index]))),
        //   ),
        //   DataRow(
        //     cells: List.generate(widget.columnNum,
        //         (index) => DataCell(Text(widget.row4Content[index]))),
        //   ),
        //   DataRow(
        //     cells: List.generate(widget.columnNum,
        //         (index) => DataCell(Text(widget.row5Content[index]))),
        //   ),
        // ],
      ),
    ]);
  }
}

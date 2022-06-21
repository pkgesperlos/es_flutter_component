// @dart=2.9


import 'package:es_flutter_component/es-chart/es-linear-chart.dart';
import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_persian_date_picker.dart';
import 'package:es_flutter_component/es_form/es_drop_down_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'es-chart/es-circular_chart.dart';
import 'es_form/es_file_picker/es_file_picker.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  MyApp({Key key}) : super(key: key);

  // GlobalKey key = GlobalKey();
  // This widget is the root of your application.
  Widget titleBox(String title, int index) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      color: Color(0xff791C9D),
      child: Text(
        "data$index",
        style: TextStyle(
            fontSize: 17,
            fontFamily: "yekan",
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
  String _data="Wishing is The reason of talent";

  @override
  Widget build(BuildContext context) {
    List<Widget> titleList = List.generate(
      20,
      (index) => titleBox("ابزار کمکی", index),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '/',
        // routes: {
        // '/': (context) => EsForm(),
        // // '/center': (context) => CenterComputerScreen(page: PanelCenterPage()),
        // // '/': (context) => Test(),
        // // '/text':(context) => PanelTextSample(),
        // '/login': (context) => EsDateTimePicker(),
        // },
        home: Scaffold(
            resizeToAvoidBottomInset: false,

          // body:Center(child: EsOrdinaryButton(text: 'press',onPressed: (){
          //   NotificationApi.showNotification();
          // },),)
          body: Center(child:EsInformationButton(dialogeText: "it is a chart!",)
          ),
        ));

    
  }


  Widget boxShow(Widget widget){
    return Container(
      padding:EdgeInsets.all(10) ,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white
      ),
      child:widget ,
    );
}}

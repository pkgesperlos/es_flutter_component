// @dart=2.9


import 'package:es_flutter_component/es_button/es_information_button.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          body:Column(
            children: [
              EsOrdinaryButton(text: "ورود",onPressed: (){},),
              EsOrdinaryText(data: "ssssssssssss")
            ],
          )
        ));

    
  }


}

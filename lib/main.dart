// @dart=2.9

import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_button/es_loading_button.dart';
import 'package:es_flutter_component/es_dialog/es_awesome_dialog.dart';
import 'package:es_flutter_component/es_dialog/es_awesome_dialog/es_autohide_dialog.dart';
import 'package:es_flutter_component/es_dialog/es_awesome_dialog/es_error_dialog.dart';
import 'package:es_flutter_component/es_dialog/es_awesome_dialog/es_warning_dialog.dart';
import 'package:es_flutter_component/es_form/es_animated_checkbox.dart';
import 'package:es_flutter_component/es_form/es_checkbox_vallidation.dart';

import 'package:es_flutter_component/es_form/es_date_time_picker/es_android_time_picker.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_cupertino_time_picker.dart';

import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker/es_date_time_picker.dart';
import 'package:es_flutter_component/es_form/es_file_picker.dart';
import 'package:es_flutter_component/es_form/es_ordinary_slider.dart';
import 'package:es_flutter_component/es_form/es_ranged_slider.dart';
import 'package:es_flutter_component/es_form/es_text_editor.dart';
import 'package:es_flutter_component/es_form/es_text_field.dart';
import 'package:es_flutter_component/es_form/es_toggle_button.dart';
import 'package:es_flutter_component/es_image/es_zooming_image.dart';
import 'package:es_flutter_component/es_list/es_accardion_list.dart';
import 'package:es_flutter_component/es_slider/es_carousel_slider.dart';
import 'package:es_flutter_component/es_tab_navigator/es_side_navigator.dart';
import 'package:es_flutter_component/es_table/es_editable_table.dart';
import 'package:es_flutter_component/es_table/es_simple_table.dart';
import 'package:es_flutter_component/es_text/es_dotted_text.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:es_flutter_component/es_text/es_marked_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/test2.dart';
import 'package:es_flutter_component/test3.dart';
import 'package:es_flutter_component/test4.dart';
import 'package:es_flutter_component/testhtml.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'es_button/es_icon_button.dart';
import 'es_dialog/es_awesome_dialog/es_body_dialog.dart';
import 'es_dialog/es_awesome_dialog/es_info_dialog.dart';
import 'es_dialog/es_awesome_dialog/es_success_dialog.dart';
import 'es_form/es_checkbox.dart';
import 'es_form/es_date_time_picker/es_cupertino_12h_time_picker.dart';
import 'es_form/es_date_time_picker/es_persian_date_picker.dart';
import 'es_form/es_drop_down_button.dart';
import 'es_form/es_radio_button.dart';
import 'es_form.dart';
import 'es_notification/es_ordinary_notification.dart';

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

          body:Center(child: EsOrdinaryButton(text: 'press',onPressed: (){
            NotificationApi.showNotification();
          },),)
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

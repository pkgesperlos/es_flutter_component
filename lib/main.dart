// @dart=2.9
import 'package:es_flutter_component/es_Slider/es_carousel_slider.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_button/es_radio_button.dart';
import 'package:es_flutter_component/es_form/es_checkbox_use.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker.dart';
import 'package:es_flutter_component/es_form/es_drop_down_button.dart';
import 'package:es_flutter_component/es_form/es_file_picker.dart';
import 'package:es_flutter_component/es_form/es_ordinary_slider.dart';
import 'package:es_flutter_component/es_form/es_price_field.dart';
import 'package:es_flutter_component/es_form/es_ranged_slider.dart';
import 'package:es_flutter_component/es_form/es_rating_bar.dart';
import 'package:es_flutter_component/es_form/es_shaba_number_field.dart';
import 'package:es_flutter_component/es_form/es_text_area.dart';
import 'package:es_flutter_component/es_form/es_text_editor.dart';
import 'package:es_flutter_component/es_form/es_toggle_button.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_responsive_image.dart';
import 'package:es_flutter_component/es_image/es_zooming_image.dart';
import 'package:es_flutter_component/es_list/es_accardion_list.dart';
import 'package:es_flutter_component/es_list/es_ordinary_list.dart';
import 'package:es_flutter_component/es_progressbar/es_circular_progressbar.dart';
import 'package:es_flutter_component/es_slider/es_slide_indicator.dart';
import 'package:es_flutter_component/es_slider/es_perspective_slider.dart';
import 'package:es_flutter_component/es_tab_navigator/es_side_navigator.dart';
import 'package:es_flutter_component/es_tab_navigator/es_top_navigatior.dart';
import 'package:es_flutter_component/es_table/es_editable_table.dart';
import 'package:es_flutter_component/es_table/es_simple_table.dart';
import 'package:es_flutter_component/es_text/es_marked_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/es_form/es_time_picker.dart';
import 'package:flutter/material.dart';
import 'es_button/es_icon_button.dart';
import 'es_form/es_checkbox.dart';
import 'es_dialog/es_awesome_dialog.dart';
import 'es_dialog/es_success_dialog.dart';
import 'es_dialog/es_sweet_dialog.dart';
import 'es_form/es_phone_number_field.dart';
import 'es_form/es_text_editor.dart';
import 'es_image/es_zooming_image.dart';
import 'es_list/es_check_list.dart';
import 'es_progressbar/es_linear_progressbar.dart';

import 'es_tab_navigator/es_bottom_navigator.dart';
import 'es_text/bread_crumb.dart';
import 'es_text/es_dotted_text.dart';
import 'es_text/es_label_text.dart';
import 'es_form/es_text_field.dart';
import 'images/es_lightbox_showing_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _formkey=GlobalKey<FormState>();
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

  @override
  Widget build(BuildContext context) {
    List<Widget> titleList = List.generate(
      20,
      (index) => titleBox("ابزار کمکی", index),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(),

            // body: AnimatedCheckBox(),
            // body: CheckboxForm(
            //   title: Text("check box"),
            //   validator: (value){
            //     if(value!=false){return "it is not OK";}
            //     return null;
            //   },
            //   onSaved: (value){
            //     if(value==true){}
            //   },
            // ),
            // body:TimePicker1()
            //     body: Center(
            //   child: IconButton(
            //
            //     onPressed: () {},
            //     icon:Icon(Icons.search),
            //   ),
            // )
            // body: Center(child: EsPerspectiveSlider(itemList: titleList,horizental: true,)),

            //     body: Center(
            //   child: EsTopNavigator(
            //     pagesContentList: titleList,
            //     tabBarItemList: tabBarItemList
            //   ),
            // )
            //
            //   body: EsSideNavigator(pagesContentList: titleList,tabBarItemList:tabBarItemList2),
            // home: EsCheckbox()
            // body: EsOrdinaryList(itemList: titleList,),
            // body: EsAccordionList(),
            // body: Center(child: EsIconButton(icon: Icons.search, onPressed: () {  },))
            // body: Center(child: EsRadioButton( ))
            // body: EsEditableTable(),
            // body: Container(
            //   width: 300,
            //   height: 300,
            //   child: EsResponsiveImage(path: "assets/images/img1.jpg",),
            // ),
            // body: EsAvatarImage(path: "assets/images/img1.jpg",radius: 100,),
            // body: EsLightBoxShowing(path: "assets/images/img1.jpg",),
            // body: EsZoomingImage(img: AssetImage("assets/images/img1.jpg"),),
            // body:Center(
            //   // child:  EsLinearProgressbar(),
            //   child:  EsDateTimePicker(),
            // ),
            // body: Center(child: EsTextArea(hint: "Enter your text:",),),
            // body: Center(child: EsDropDownButton(items: ["I am Ok","I am happy ","3","4",])),
            body: Center(
              child: EsCheckBoxUse()
            )));
  }


}

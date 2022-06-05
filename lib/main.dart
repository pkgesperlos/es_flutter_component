// @dart=2.9
import 'package:es_flutter_component/es_Slider/es_carousel_slider.dart';
import 'package:es_flutter_component/es_button/es_ordinary_button.dart';
import 'package:es_flutter_component/es_button/es_radio_button.dart';
import 'package:es_flutter_component/es_image/es_avatar_image.dart';
import 'package:es_flutter_component/es_image/es_responsive_image.dart';
import 'package:es_flutter_component/es_image/es_zooming_image.dart';
import 'package:es_flutter_component/es_list/es_accardion_list.dart';
import 'package:es_flutter_component/es_list/es_ordinary_list.dart';
import 'package:es_flutter_component/es_slider/es_perspective_slider.dart';
import 'package:es_flutter_component/es_tab_navigator/es_side_navigator.dart';
import 'package:es_flutter_component/es_tab_navigator/es_top_navigatior.dart';
import 'package:es_flutter_component/es_table/es_editable_table.dart';
import 'package:es_flutter_component/es_table/es_simple_table.dart';
import 'package:es_flutter_component/es_text/es_marked_text.dart';
import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:es_flutter_component/es_text/es_title.dart';
import 'package:es_flutter_component/es_form/es_timepicker.dart';
import 'package:flutter/material.dart';
import 'es_button/es_icon_button.dart';
import 'es_checkbox.dart';
import 'es_dialog/es_awesome_dialog.dart';
import 'es_dialog/es_success_dialog.dart';
import 'es_dialog/es_sweet_dialog.dart';
import 'es_image/es_zooming_image.dart';
import 'es_list/es_check_list.dart';
import 'es_progressbar/es_ordinary_progressbar.dart';
import 'es_tab_navigator/es_bottom_navigator.dart';
import 'es_text/bread_crumb.dart';
import 'es_text/es_dotted_text.dart';
import 'es_text/es_label_text.dart';
import 'es_form/es_textfield.dart';
import 'images/es_lightbox_showing_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  // GlobalKey key = GlobalKey();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Widget> titleList = List.generate(
      20,
      (index) => titleBox("ابزار کمکی", index),
    );
    List<BottomNavigationBarItem> bottomNavigationBarItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: Colors.red,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Business',
        backgroundColor: Colors.green,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'School',
        backgroundColor: Colors.purple,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
        backgroundColor: Colors.pink,
      ),
    ];
    List<Tab> tabBarItemList = <Tab>[
      new Tab(
        text: "STATISTICS",
        icon: new Icon(Icons.show_chart),
      ),
      new Tab(
        text: "HISTORY",
        icon: new Icon(Icons.history),
      ),
      new Tab(
        text: "STATISTICS",
        icon: new Icon(Icons.show_chart),
      ),
      new Tab(
        text: "HISTORY",
        icon: new Icon(Icons.history),
      ),
    ];
    List<NavigationRailDestination> tabBarItemList2=[
      NavigationRailDestination(
        icon: Column(
          children: [Icon(Icons.favorite_border), Text('Button 1')],
        ),
        selectedIcon: Container(
          color: Colors.green,
          child: Column(
            children: [Icon(Icons.favorite_border), Text('Button 1')],
          ),
        ),
        label: Text(""),
      ),
      NavigationRailDestination(
        icon: Column(
          children: [Icon(Icons.bookmark_border), Text('Button 2')],
        ),
        selectedIcon: Column(
          children: [Icon(Icons.book), Text('2 clicked')],
        ),
        label: Text(''),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.star_border),
        selectedIcon: Icon(Icons.star),
        label: Text('Third'),
      ),
    ];
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
          body: EsSweetDialog(),
        ));

  }

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
}

// @dart=2.9

import 'package:es_flutter_component/es_button/es_drop_down_button.dart';
import 'package:es_flutter_component/es_form/es_date_time_picker.dart';
import 'package:es_flutter_component/es_tab_navigator/es_side_navigator.dart';
import 'package:es_flutter_component/test2.dart';
import 'package:es_flutter_component/test3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'es_button/es_radio_button.dart';

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

  @override
  Widget build(BuildContext context) {
    // List<Widget> titleList = List.generate(
    //   20,
    //   (index) => titleBox("ابزار کمکی", index),
    // );

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
            // body: Container()
            // body: EsSlideIndicator(items: items,),
            // body: EsDropDownButton(items: ["English","Persian"],
            //   onTapItems: [(){print('English');},(){print('Persian');}],),
            body: EsSideNavigator(
              pagesContentList: [EsDateTimePicker(), EsRadioButton()],
              tabBarItemList: tabBarItemList2,
            )
          // body: MyStatefulWidget(),

        ));
  }

  List<NavigationRailDestination> tabBarItemList2 = [
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
    // NavigationRailDestination(
    //   icon: Icon(Icons.star_border),
    //   selectedIcon: Icon(Icons.star),
    //   label: Text('Third'),
    // ),
  ];
}

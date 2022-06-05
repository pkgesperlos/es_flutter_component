import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:list_wheel_scroll_view_x/list_wheel_scroll_view_x.dart';

class EsPerspectiveSlider extends StatelessWidget {
  List<Widget> itemList;
  List<Widget> horizentalItemList=[];
  bool horizental;


  EsPerspectiveSlider({required this.itemList, this.horizental = false,});

  @override
  Widget build(BuildContext context) {
    horizentalItemList=List.generate(itemList.length, (index) {
      return Transform.rotate(angle: pi/2,child: itemList[index],);
    });
    return Transform.rotate(
      angle: horizental ? -pi / 2 : 0,
      child: ListWheelScrollView(
        magnification: 0.5,
        itemExtent: 150,
        children: horizental ? horizentalItemList : itemList,
        perspective: 0.01,

      ),
    );

  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EsCarouselSlider extends StatelessWidget {
  List<Widget> itemList;
  EsCarouselSlider({required this.itemList}) ;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: itemList,
      options: CarouselOptions(
          viewportFraction: 0.5,
          // height: 270,
          initialPage: 2,
          disableCenter: true,
          // aspectRatio: 0.1,
          enlargeCenterPage: true),
    );
  }
}

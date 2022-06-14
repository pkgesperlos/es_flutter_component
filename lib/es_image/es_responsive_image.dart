import 'package:flutter/material.dart';

class EsResponsiveImage extends StatelessWidget {
  String path;
  // Image imag;
  EsResponsiveImage({Key? key,required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      // width: double.maxFinite,
      // height: double.maxFinite,
      child: Image.asset(path,
        fit: BoxFit.cover,),



    ));
  }


}

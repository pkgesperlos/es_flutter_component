import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:flutter/material.dart';


// late String _path;
class EsLightBoxShowing extends StatelessWidget {
  String path;
  EsLightBoxShowing({required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
           child: Image.asset(path)),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return DetailScreen();
        }));
      },
    );
  }
}

class DetailScreen extends StatelessWidget {
  // get path => EsLightBoxShowing(path: path,);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        child: Center(
          child: Container(
              color: Colors.black54,
              child: Image.asset("assets/resources/img1.jpg")),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

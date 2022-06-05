import 'package:es_flutter_component/images/constants.dart';
import 'package:flutter/material.dart';

class EsAvatarImage extends StatelessWidget {
  String path;
  double radius;
  EsAvatarImage({Key? key,required this.path,required this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(

      backgroundColor: Constants.button,
      radius:radius,
      child: SizedBox(
        height: radius*2,
        child: ClipOval(
          child: Image.asset(path,
          fit: BoxFit.cover,
          ),
    ))
      // backgroundImage: ,
    );

  }


}

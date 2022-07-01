import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/Constants/styles.dart';


class EsSvgIcon extends StatelessWidget {
  String? path;
  double? size;
  Color? color;

  EsSvgIcon(this.path, {this.size, this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SvgPicture.asset(path!,color: color??Styles.t4Color,
    //     width:size??Dims.h2FontSize(context),
    //     height:size??Dims.h2FontSize(context));
    return SvgPicture.asset(
      path!,
      // color: color ?? Styles.primaryColor,
      // width: size ?? Dims.h2FontSize(context),
      // height: size ?? Dims.h2FontSize(context),
    );
  }
}

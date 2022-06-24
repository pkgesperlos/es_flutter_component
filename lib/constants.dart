import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class Constants{
  //font
  static const String fontFamily="yekan";
//font size:
  static double commonFontSize(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS) {
      return displaySize(context).width * 0.033;
    } else if (kIsWeb ||
        Platform.isLinux ||
        Platform.isWindows ||
        Platform.isMacOS) {
      return displaySize(context).width * 0.033;
    } else {
      return displaySize(context).width * 0.033;
    }
  }
  static const  double titleFontSize=27;
  static const  double ordinaryFontSize=18;
  static const  double lableFontSize=17;
  static const  double markedFontSize=15;
  //font color
  static const Color titleText=Colors.black;
  static const Color ordinaryText=Colors.black;
  static const Color lableText=Colors.black87;
  static const Color dottedText=Colors.black87;
  static const Color markedText=Colors.black;

  //button
  //button size
  static const Color buttonColor=Color(0xff18186D);
  static const Color buttonFontColor=Colors.white;
  static const Color buttonBorderColor=Colors.black26;
  static const Color buttonShadowColor=Colors.black26;
  static const Color sidebarColor=Colors.black26;

  static const  double buttonSizeX=50;
  static const  double buttonSizeY=10;
  static const  double buttonFontSize=17;
  static const  double buttonIconSize=17;

  static const Color successButtonColor=Colors.green;
  static const Color errorButtonColor=Colors.red;
  static const Color infoButtonColor=Colors.blue;
  static const Color warningButtonColor=Colors.orange;
  static const Color bodyButtonColor=Colors.black38;
  static const Color inputButtonColor=Colors.indigo;
  static const Color autoHideButtonColor=Colors.purple;





  // static double paddingDimension(BuildContext context){
  //   if (Platform.isAndroid || Platform.isIOS) {
  //     return displaySize(context).width * 0.03;
  //   } else if (kIsWeb ||
  //       Platform.isLinux ||
  //       Platform.isWindows ||
  //       Platform.isMacOS) {
  //     return displaySize(context).width * 0.03;
  //   } else {
  //     return displaySize(context).width * 0.03;
  //   }
  // }
  static   double paddingDimension=10;
  static   double borderRadiusDimension=paddingDimension as double;
  static double spaceDimension=2*paddingDimension as double;
  static double spaceBigDimension=5*paddingDimension as double;

  static const  double iconSize=30;
  // static const  double iconButtonSize=30;


  static const Color shadowGray=Color(0xffD1D1D1);
  static const Color borderGray=Color(0xffD5D5D5);
  static const Color darkThemeFont=Color(0xffD5D5D5);


  static const Color button=Color(0xff0d193e);
  static const Color iconButton=Color(0xff0d193e);

  static const Color purpleLight=Color(0xff1e224c);
  static const Color purpleDark=Color(0xff0d193e);
  static const Color orangeDark=Color(0xffec8d2f);
  static const Color orangeLight=Color(0xfff8b250);
  static const Color redDark=Color(0xfff44336);
  static const Color redLight=Color(0xffff5182);
  static const Color blueDark=Color(0xff0293ee);
  static const Color greenDark=Color(0xff13d38e);

  static Size displaySize(BuildContext context) {
    debugPrint('Size = ' + MediaQuery.of(context).size.toString());
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    debugPrint('Height = ' + displaySize(context).height.toString());
    return displaySize(context).height;
  }

}
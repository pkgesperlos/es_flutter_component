import 'package:flutter/material.dart';

import 'dims.dart';

class Styles {
  //
  static const BoxShadow centerBoxShadow =
      BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 0);

  //
  // static const BoxShadow lowBoxShadow = BoxShadow(
  //     color: Colors.black12,
  //     blurRadius: 10,
  //     spreadRadius: -2,
  //     offset: Offset(0,4)
  // );
  //
  // static const BoxShadow centerBoxShadowHighElevation = BoxShadow(
  //     color: Colors.black12,
  //     blurRadius: 6,
  //     spreadRadius: 3,
  //     offset: Offset(0,4)
  // );
  //
  // static const BoxShadow topShadow = BoxShadow(
  //     color: Colors.black12,
  //     blurRadius: 2,
  //     spreadRadius: 2,
  //     offset: Offset(0,-1)
  // );
  //
  // static const BoxShadow slidingUpBoxShadow = BoxShadow(
  //     color: Colors.black12,
  //     blurRadius: 10,
  //     spreadRadius: 10,
  //   offset: Offset(0,5)
  // );
  //
  // static const BoxShadow centerBoxShadowCircle = BoxShadow(
  //     color:bottomNavigationColor,
  //     blurRadius: 5,
  //     spreadRadius: -1
  // );

  // static const BoxShadow centerBoxShadowRectangle = BoxShadow(
  //     color: Colors.pink,
  //     blurRadius: 5,
  //     spreadRadius: -1
  // );

  // static BoxDecoration buttonShadow = BoxDecoration(
  //     borderRadius:
  //     BorderRadius.all(Radius.circular(Dims.commonBorderRadius)),
  //     boxShadow: [Styles.lowBoxShadow]);

  //
  //
  // static BoxDecoration borderDecoration = BoxDecoration(
  //     borderRadius: BorderRadius.all(Radius.circular(Dims.commonBorderRadius)),
  //     border: Border.all(color: Colors.black38));
  //
  // static BoxDecoration borderDecorationLowColor = BoxDecoration(
  //     borderRadius: BorderRadius.all(Radius.circular(Dims.commonBorderRadius)),
  //     border: Border.all(color: dividerColor));
  //
  //
  // static BoxDecoration shadowDecoration = BoxDecoration(
  //     borderRadius:
  //     BorderRadius.all(Radius.circular(Dims.commonBorderRadius)),
  //     boxShadow: [Styles.centerBoxShadow]);

  //
  // static BoxDecoration ellipticalDecoration = BoxDecoration(
  //     border: Border.all(
  //       color: Colors.black38,
  //       width: 1,
  //     ),
  //     borderRadius: BorderRadius.all(
  //         Radius.elliptical(50, 50)));
  //
  // static BoxDecoration ellipticalDecorationWithoutBorder = BoxDecoration(
  //     borderRadius: BorderRadius.all(
  //         Radius.elliptical(50, 50)));
  //
  // static BoxDecoration highShadowElevationDecoration = BoxDecoration(
  //   color: Colors.white,
  //   borderRadius: BorderRadius.all(Radius.circular(Dims.commonBorderRadius)),
  //   boxShadow: [
  //     Styles.centerBoxShadowHighElevation
  //   ],
  // );
  //
  // static const textFieldContentPadding = EdgeInsets.only(left: 8,right: 8,top: 0,bottom: 0);
  // static const containerButtonContentPadding = EdgeInsets.only(left: 2,right: 2,top: 12,bottom: 12);
  // static const buttonContentPadding = EdgeInsets.only(left: 8,right: 8,top: 0,bottom: 0);
  //

  //
  //
  // static const Color starsRateColor = Color(0xFFFF9900);
  // static const Color secondaryIconColor = Color(0xFFA8A8A8);
  // static const Color iconButtonsColor = Color(0xFFFF96C6);
  static BoxDecoration cardBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.all(
        Radius.circular(Dims.h1Padding(context)),
      ),
      boxShadow: [Styles.CardBoxShadow],
    );
  }

  static BoxDecoration dialogBoxDecoration(BuildContext context) {
    return BoxDecoration(
      color: Styles.t6Color,
      borderRadius: BorderRadius.all(
        Radius.circular(Dims.h1BorderRadius(context)),
      ),
    );
  }

  static const BoxShadow CardBoxShadow = BoxShadow(
      color: t4Color, blurRadius: 3, spreadRadius: 2, offset: Offset(0, 1));
  static const BoxShadow bottomNavigationShadow = BoxShadow(
      color: Color(0xffDCDCDC),
      blurRadius: 3,
      spreadRadius: 3,
      offset: Offset(0, 0));

  static TextStyle inputStyle(BuildContext context) =>
      TextStyle(fontSize: Dims.h3FontSize(context));

  static const Color primaryColor = Color(0xFF38C961);

  static const Color primaryDarkColor = Color(0xFF01BD31);
  static const Color primaryLightColor = Color(0xFF72FA9A);
  static const Color textPrimaryColor = Colors.black;
  static const Color textSecondaryColor = Colors.black45;

  static const Color t1Color = Colors.black;
  static const Color t2Color = Colors.black38;
  static const Color t3Color = Color(0xFFA1A1A1);
  static const Color t4Color = Color(0xffc9c7c7);
  static const Color t5Color = Color(0xFFFCFCFC);
  static const Color t6Color = Color(0xFFffffff);
  static const Color warningColor = Color(0xFFFBC502);
  static const Color successColor = Color(0xFF91C716);
  static const Color disabledColor = Color(0xFFD3D3D3);
  static const Color dangerColor = Color(0xFFD32B2B);
}


class ButtonColor{

 // static Color primary = Styles.primaryColor;
  static Color warning = Styles.warningColor;
  static Color success = Styles.successColor;
  static Color dark = Styles.primaryDarkColor;
  static Color disable = Styles.disabledColor;
  static Color danger = Styles.dangerColor;




  static  MaterialColor primary = MaterialColor(
    Styles.primaryColor.value,
    <int, Color>{
      100: Colors.black.withOpacity(.1),
      200: Color(Styles.primaryColor.value),
    },
  );


}

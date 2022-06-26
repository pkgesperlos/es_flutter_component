
import 'package:es_flutter_component/images/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class Dims {
  static const double indicatorImageAspectRatio = 2 / 1;
  static const double cardAspectRatio = 2 / 1;

  static double drawerWidth(BuildContext context) {
    return responsiveDeviceConstructor(context,0.6);
  }


  static double h1Padding(BuildContext context) {
    return responsiveDeviceConstructor(context,0.04);
  }

  static double h2Padding(BuildContext context) {
    return responsiveDeviceConstructor(context,0.02);
  }
  static double h3Padding(BuildContext context) {
    return responsiveDeviceConstructor(context,0.01);
  }

  static double h0Padding(BuildContext context) {
    return responsiveDeviceConstructor(context,0.15);
  }

  static double bordertickness(BuildContext context) {
    return responsiveDeviceConstructor(context,0.015);
  }

  static double h1BorderRadius(BuildContext context) {
    return responsiveDeviceConstructor(context,0.04);
  }
  static double h2BorderRadius(BuildContext context) {
    return responsiveDeviceConstructor(context,0.02);
  }
  static double h3BorderRadius(BuildContext context) {
    return responsiveDeviceConstructor(context,0.01);
  }

  static double h1IconSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.4);
  }
  static double h2IconSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.2);
  }
  static double h3IconSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.06);
  }
  static double h4IconSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.02);
  }


  static double h1FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.045);
  }
  static double h2FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.040);
  }
  static double h3FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.033);
  }
  static double h4FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.030);
  }
  static double h5FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.025);
  }
  static double h6FontSize(BuildContext context) {
    return responsiveDeviceConstructor(context,0.02);
  }



  static Size displaySize(BuildContext context) {
    debugPrint('Size = ' + MediaQuery.of(context).size.toString());
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    debugPrint('Height = ' + displaySize(context).height.toString());
    return displaySize(context).height;
  }
  static double responsiveDeviceConstructor(BuildContext context,double sizeFactor) {
    if (
    ResponsiveLayot.isTablet(context)||
        ResponsiveLayot.isTinyLimit(context)||
        ResponsiveLayot.isTinyHightLimit(context)||
        ResponsiveLayot.isPhone(context)

    ) {
      return displaySize(context).width * sizeFactor;
    } else if (
    ResponsiveLayot.isLargeTablet(context)||
        ResponsiveLayot.isComputer(context)
    ) {
      return displaySize(context).width * sizeFactor*0.3;
    } else {
      return displaySize(context).width * sizeFactor*0.3;
    }
  }
  static double responsivePlathformConstructor(BuildContext context,double sizeFactor) {
    if (Platform.isAndroid || Platform.isIOS) {
      return displaySize(context).width * sizeFactor;
    } else if (kIsWeb ||
        Platform.isLinux ||
        Platform.isWindows ||
        Platform.isMacOS) {
      return displaySize(context).width * sizeFactor*0.7;
    } else {
      return displaySize(context).width * sizeFactor*0.7;
    }
  }


}

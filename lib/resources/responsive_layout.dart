import 'package:flutter/cupertino.dart';

class ResponsiveLayot extends StatelessWidget {
  final Widget tiny;
  final Widget phone;
  final Widget largePhone;
  final Widget tablet;
  final Widget largeTablet;
  final Widget computer;
  final Widget largeComputer;

  ResponsiveLayot(
      {required this.tiny, required this.phone,required this.largePhone, required this.tablet, required this.largeTablet, required this.computer,required this.largeComputer,});

  static final int tinyHightLimit = 100;
  static final int tinyLimit = 270;
  static final int phoneLimit = 550;
  static final int largePhoneLimit = 765;
  static final int tabletLimit = 800;
  static final int largeTabletLimit = 1100;
  static final int computerLimit = 1200;
  static bool isTinyHightLimit(BuildContext context)=>
      MediaQuery.of(context).size.height<tinyHightLimit;
  static bool isTinyLimit(BuildContext context)=>
      MediaQuery.of(context).size.width<tinyLimit;
  static bool isPhone(BuildContext context)=>
      MediaQuery.of(context).size.width<phoneLimit &&
          MediaQuery.of(context).size.width>=tinyLimit;
  static bool isLargePhone(BuildContext context)=>
      MediaQuery.of(context).size.width<largePhoneLimit &&
          MediaQuery.of(context).size.width>=phoneLimit;
  static bool isTablet(BuildContext context)=>
      MediaQuery.of(context).size.width<tabletLimit &&
          MediaQuery.of(context).size.width>=largePhoneLimit;
  static bool isLargeTablet(BuildContext context)=>
      MediaQuery.of(context).size.width<largeTabletLimit &&
          MediaQuery.of(context).size.width>=tabletLimit;
  static bool isComputer(BuildContext context)=>
      MediaQuery.of(context).size.width<computerLimit &&
          MediaQuery.of(context).size.width>=largeTabletLimit;
  static bool isLargeComputer(BuildContext context)=>
      MediaQuery.of(context).size.width>=computerLimit;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth < tinyLimit||constraints.maxHeight<tinyHightLimit){
            return tiny;
          }
          if(constraints.maxWidth < phoneLimit){
            return phone;
          }
          if(constraints.maxWidth < largePhoneLimit){
            return largePhone;
          }
          if(constraints.maxWidth < tabletLimit){
            return tablet;
          }
          if(constraints.maxWidth < largeTabletLimit){
            return largeTablet;
          }if(constraints.maxWidth < computerLimit){
            return computer;
          }else{
            return largeComputer;
          }

        });
  }

}
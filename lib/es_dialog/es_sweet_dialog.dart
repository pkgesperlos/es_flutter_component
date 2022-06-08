// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:awesome_dialog/awesome_dialog.dart';
// import 'package:sweetalert/sweetalert.dart';
//
// class EsSweetDialog extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _EsSweetDialog();
//   }
//
// }
// class _EsSweetDialog extends State<EsSweetDialog>{
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         AnimatedButton(
//           text: 'Succes Dialog',
//           color: Colors.green,
//           pressEvent: () {
//             SweetAlert.show(context,
//                 title: "Just show a message",
//                 subtitle: "Sweet alert is pretty",
//                 style: SweetAlertStyle.success);
//           },
//         ),
//         SizedBox(height: 20,),
//         AnimatedButton(
//           text: 'Just show a message',
//           color: Colors.orange,
//           pressEvent: () {
//             SweetAlert.show(context,
//                 title: "Just show a message",
//                 subtitle: "Sweet alert is pretty",
//                 style: SweetAlertStyle.confirm,
//                 showCancelButton: true, onPress: (bool isConfirm) {
//                   if (isConfirm) {
//                     SweetAlert.show(context,style: SweetAlertStyle.success,title: "Success");
//                     // return false to keep dialog
//                     return false;
//                   }
//                   return false;
//                 });
//           },
//         ),
//         SizedBox(height: 20,),
//         AnimatedButton(
//           text: 'Do you want to delete this message',
//           color: Colors.red,
//           pressEvent: () {
//             SweetAlert.show(context,
//                 subtitle: "Do you want to delete this message",
//                 style: SweetAlertStyle.confirm,
//                 showCancelButton: true, onPress: (bool isConfirm) {
//                   if(isConfirm){
//                     SweetAlert.show(context,subtitle: "Deleting...", style: SweetAlertStyle.loading);
//                     new Future.delayed(new Duration(seconds: 2),(){
//                       SweetAlert.show(context,subtitle: "Success!", style: SweetAlertStyle.success);
//                     });
//                   }else{
//                     SweetAlert.show(context,subtitle: "Canceled!", style: SweetAlertStyle.error);
//                   }
//                   // return false to keep dialog
//                   return false;
//                 });
//
//           },
//         ),
//
//       ],
//     );
//   }
//
// }

// import 'package:es_flutter_component/images/Constants/styles.dart';
// import 'package:flutter/material.dart';
//
//
// class FlatButtonForm extends FormField<String> {
//   String initialValue = "";
//   String selectedValue = "";
//   Future<String> Function() onPress;
//   IconData icon;
//   final bool useShadow;
//   final Color textColor;
//   FormFlatButtonController controller = FormFlatButtonController();
//
//   FlatButtonForm({
//     required FormFieldSetter<String> onSaved,
//     required FormFieldValidator<String> validator,
//     required this.initialValue,
//     required this.controller,
//     required this.onPress,
//     required this.icon,
//     this.useShadow = true,
//     bool autovalidate = false,
//     this.textColor = Colors.black
//   }) : super(
//       onSaved: onSaved,
//       validator: validator,
//       initialValue: initialValue,
//       autovalidateMode: AutovalidateMode.disabled,
//       builder: (FormFieldState<String> state) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Container(
//               decoration: useShadow
//                   ? Styles.cardBoxDecoration()
//                   : null,
//               child: FlatButton(
//                 color: Theme.of(state.context).accentColor,
//                 onPressed: () async {
//
//                   String s = await onPress();
//
//                   List<String> sp = s.split(",");
//
//                   state.didChange(sp[1]);
//
//                   controller.id = sp[0];
//                   controller.title = sp[1];
//
//
//                 },
//                 shape: OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(8)),
//                     borderSide: BorderSide(
//                         color: boredrColor(state, initialValue))),
//                 padding: EdgeInsets.only(right: 8,left: 8,bottom: 10,top: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     icon != null
//                         ? Icon(
//                       icon,
//                       size: 24,
//                     )
//                         : Container(),
//                     Expanded(
//                         child: ButtonText(
//                           state.value == initialValue
//                               ? initialValue
//                               : state.value,
//                           textAlign: TextAlign.center,
//                           textColor: textColor,
//                         )),
//                     SizedBox(
//                       width: 24,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             state.hasError
//                 ? Text(
//               state.errorText,
//               textAlign: TextAlign.right,
//               style: TextStyle(color: Colors.red, fontSize: 12),
//             )
//                 : Container()
//           ],
//         );
//       });
//
//   static boredrColor(FormFieldState<String> state, String initialValue) {
//     if (state.hasError && state.value == initialValue) {
//       return Colors.red;
//     }
//     if (!state.hasError && state.value != initialValue) {
//       return Theme.of(state.context).primaryColor;
//     } else {
//       return Colors.black45;
//     }
//   }
// }
//
// class FormFlatButtonController {
//   String id = "";
//   String title = "";
//
// }

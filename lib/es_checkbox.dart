import 'package:es_flutter_component/images/constants.dart';
import 'package:flutter/material.dart';



// class EsCheckbox extends StatefulWidget {
//   @override
//   _EsCheckbox createState() => _EsCheckbox();
// }
//
// class _EsCheckbox extends State<EsCheckbox> {
//   bool valuefirst = false;
//   bool valuesecond = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Flutter Checkbox Example'),),
//         body: Container(
//             padding: new EdgeInsets.all(22.0),
//             child: Column(
//               children: <Widget>[
//                 SizedBox(width: 10,),
//                 Text('Checkbox with Header and Subtitle',style: TextStyle(fontSize: 20.0), ),
//                 CheckboxListTile(
//                   secondary: const Icon(Icons.alarm),
//                   title: const Text('Ringing at 4:30 AM every day'),
//                   subtitle: Text('Ringing after 12 hours'),
//                   value: this.valuefirst,
//                   onChanged: (bool? value) {
//                     setState(() {
//                       this.valuefirst = value!;
//                     });
//                   },
//                 ),
//
//               ],
//             )
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;




class AnimatedCheckBox extends StatefulWidget {
  const AnimatedCheckBox({Key? key}) : super(key: key);

  @override
  State<AnimatedCheckBox> createState() => _AnimatedCheckBox();
}

class _AnimatedCheckBox extends State<AnimatedCheckBox> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: const Text('Animate Slowly'),
      value: timeDilation != 1.0,
      onChanged: (bool? value) {
        setState(() {
          timeDilation = value! ? 5.0 : 1.0;
        });
      },
      secondary: const Icon(Icons.hourglass_empty),
    );
  }
}


class CheckboxForm extends FormField<bool> {
  CheckboxForm(
      {required Widget title,
        required FormFieldSetter<bool> onSaved,
        required FormFieldValidator<bool> validator,
        bool initialValue = false,
        bool autovalidate = false})
      : super(
      onSaved: onSaved,
      validator: validator,
      initialValue: initialValue,
      builder: (FormFieldState<bool> state) {
        return CheckboxListTile(
          dense: state.hasError,
          title: title,
          value: state.value,
          onChanged: state.didChange,
          subtitle: state.hasError
              ? Builder(
            builder: (BuildContext context) =>  Text(
              state.errorText.toString(),
              style: TextStyle(color: Constants.redLight),
            ),
          )
              : null,
          controlAffinity: ListTileControlAffinity.leading,
        );
      });
}

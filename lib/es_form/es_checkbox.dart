import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

///////////////////////////////////
// class AnimatedCheckBox extends StatefulWidget {
//   const AnimatedCheckBox({Key? key}) : super(key: key);
//
//   @override
//   State<AnimatedCheckBox> createState() => _AnimatedCheckBox();
// }
//
// class _AnimatedCheckBox extends State<AnimatedCheckBox> {
//   @override
//   Widget build(BuildContext context) {
//     return CheckboxListTile(
//       title: const Text('Animate Slowly'),
//       value: timeDilation != 1.0,
//       onChanged: (bool? value) {
//         setState(() {
//           timeDilation = value! ? 5.0 : 1.0;
//         });
//       },
//       secondary: const Icon(Icons.hourglass_empty),
//     );
//   }
// }
////////////////////////////////////////////



class EsCheckBox extends FormField<bool> {
  EsCheckBox(
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
                        builder: (BuildContext context) => Text(
                          state.errorText.toString(),
                          style: TextStyle(color: Theme.of(context).errorColor),
                        ),
                      )
                    : null,
                controlAffinity: ListTileControlAffinity.leading,
              );
            });
}

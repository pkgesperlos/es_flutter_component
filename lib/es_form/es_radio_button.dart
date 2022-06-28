import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:enum_to_string/enum_to_string.dart';


enum SingingCharacter { number1, number2,number3 }



// extension MyEnumExtension on SingingCharacter {
//   String get value {
//     switch (this) {
//       case SingingCharacter.number1:
//         return "hello";
//       case SingingCharacter.number2:
//         return "seven";
//       case SingingCharacter.number3:
//         return "seven";
//       default:
//         return "";
//     }
//   }
// }
class EsRadioButton extends StatefulWidget {

  const EsRadioButton({Key? key}) : super(key: key);



  @override
  State<EsRadioButton> createState() => _EsRadioButton();
}

class _EsRadioButton extends State<EsRadioButton> {

  SingingCharacter? _character = SingingCharacter.number2;



  @override
  Widget build(BuildContext context) {


    return Column(
      children: <Widget>[
        ListTile(
          title: EsOrdinaryText( "number1",),
          leading: Radio(
            value: SingingCharacter.number1,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: EsOrdinaryText("number2",),
          leading: Radio(
            value: SingingCharacter.number2,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: EsOrdinaryText( "number3",),
          leading: Radio(
            value: SingingCharacter.number3,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }

}

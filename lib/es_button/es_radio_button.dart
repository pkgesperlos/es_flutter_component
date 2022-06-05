import 'package:flutter/material.dart';
import 'package:enum_to_string/enum_to_string.dart';


enum SingingCharacter { number1, number2,number3 }
// String num1=EnumToString.convertToString(SingingCharacter.number1);
// List<String> itemList=List.generate(SingingCharacter, (index) => null)


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
          title: const Text("number1"),
          leading: Radio<SingingCharacter>(
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
          title: const Text('number2'),
          leading: Radio<SingingCharacter>(
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
          title: const Text('number3'),
          leading: Radio<SingingCharacter>(
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

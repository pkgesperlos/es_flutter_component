import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:enum_to_string/enum_to_string.dart';


enum SingingCharacter { number1, number2,number3 }


class EsRadioButton extends StatefulWidget {
  int num;
  List<String> titleList;
  bool horizontal;


   EsRadioButton({Key? key,required this.titleList,required this.num,this.horizontal=false}) : super(key: key);



  @override
  State<EsRadioButton> createState() => _EsRadioButton();
}

class _EsRadioButton extends State<EsRadioButton> {

  SingingCharacter? _character = SingingCharacter.number2;



  @override
  Widget build(BuildContext context) {


    return
      widget.horizontal
        ?Row(
        children:List.generate(widget.num, (index) =>    Row(
          children: [EsOrdinaryText( widget.titleList[index],),Radio(
            value: SingingCharacter.values[index],
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),],

        ),
        )
    ) :
    Column(
      children:List.generate(widget.num, (index) =>
          Row(
        children: [EsOrdinaryText( widget.titleList[index],),Radio(
          value: SingingCharacter.values[index],
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),],

    ),
      )
    );
  }

}

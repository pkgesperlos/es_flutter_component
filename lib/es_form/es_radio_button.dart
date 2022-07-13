import 'package:es_flutter_component/es_text/es_ordinary_text.dart';
import 'package:flutter/material.dart';
import 'package:enum_to_string/enum_to_string.dart';





class EsRadioButton extends StatefulWidget {

  List<String> titleList;
  bool horizontal;
  TextEditingController controller=TextEditingController();


   EsRadioButton({Key? key,required this.titleList,this.horizontal=false,required this.controller}) : super(key: key);



  @override
  State<EsRadioButton> createState() => _EsRadioButton();
}

class _EsRadioButton extends State<EsRadioButton> {
  String? _character ;



  @override
  Widget build(BuildContext context) {


    return
      widget.horizontal
        ?Row(
        children:List.generate(widget.titleList.length, (index) =>    Row(
          children: [EsOrdinaryText( widget.titleList[index],),
            radioWidget(index,widget.controller)
          ],

        ),
        )
    ) :
    Column(
      children:List.generate(widget.titleList.length, (index) =>
          Row(
        children: [EsOrdinaryText( widget.titleList[index],),
          radioWidget(index,widget.controller)
        ],

    ),
      )
    );
  }
Widget radioWidget(int index,TextEditingController controller){
    return Radio(
      value: widget.titleList[index],
      groupValue: _character,
      onChanged: ( value) {
        setState(() {
          _character = value.toString();
          controller.text=value.toString();

        });
      },
    );
}
}

import 'package:es_flutter_component/es_slider/es_slide_indicator.dart';
import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:flutter/material.dart';

class EsBorderedDropDownButton extends StatefulWidget {
  final List<String> items;
  final List<VoidCallback> onTapItems;
  final  hint;
  final icon;

  EsBorderedDropDownButton(
      {Key? key,
      required this.items,
      required this.onTapItems,
      this.hint,
      this.icon})
      : super(key: key);

  @override
  State<EsBorderedDropDownButton> createState() => _EsBorderedDropDownButton();
}

class _EsBorderedDropDownButton extends State<EsBorderedDropDownButton> {
  late String dropdownValue = widget.items[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.textFieldHight,
      child: DropdownButtonFormField(

        hint: EsLableText(data: widget.hint,),
        value: dropdownValue,
        decoration: const InputDecoration(
          filled: true,
          fillColor: Constants.textFieldFilledColor,
          contentPadding: EdgeInsets.symmetric(
              vertical: Constants.paddingDimension,
              horizontal: Constants.paddingDimension),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Constants.borderRadiusDimension)),
          ),


        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: GestureDetector(
              child: Text(value),
              onTap: widget.onTapItems[widget.items.indexOf(value)],
            ),
          );
        }).toList(),
      ),
    );
  }
}

import 'package:es_flutter_component/es_slider/es_slide_indicator.dart';
import 'package:es_flutter_component/constants.dart';
import 'package:flutter/material.dart';

class EsBorderedDropDownButton extends StatefulWidget {
  final List<String> items;
  final List<VoidCallback> onTapItems;
  // final String type;
  final icon;

  EsBorderedDropDownButton(
      {Key? key,
      required this.items,
      required this.onTapItems,
      // required this.type,
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
        value: dropdownValue,
        decoration: const InputDecoration(
          // hintText: "widget.type",
          // prefixText: "widget.type+:",
          // prefixIcon: widget.icon,
          // labelText: "widget.type",
          // labelText: widget.type,

          filled: true,
          fillColor: Constants.textFieldFilledColor,
          contentPadding: EdgeInsets.symmetric(
              vertical: Constants.paddingDimension,
              horizontal: Constants.paddingDimension),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Constants.borderRadiusDimension)),
          ),
          // border:UnderlineInputBorder(
          //   borderRadius: BorderRadius.circular(25),
          // ),

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

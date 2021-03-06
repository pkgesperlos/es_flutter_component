import 'package:es_flutter_component/es_slider/es_slide_indicator.dart';
import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:flutter/material.dart';

import '../../resources/Constants/styles.dart';

class EsDropDownButtonHJ extends StatefulWidget {
  final List<String> items;
  final List<VoidCallback> onTapItems;
  Color? fillColor;

  EsDropDownButtonHJ(
      {Key? key, required this.items, required this.onTapItems, this.fillColor})
      : super(key: key);

  @override
  State<EsDropDownButtonHJ> createState() => _EsDropDownButtonHJ();
}

class _EsDropDownButtonHJ extends State<EsDropDownButtonHJ> {
  late String dropdownValue = widget.items[0];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      // dropdownColor: widget.fillColor,

      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down),
      elevation: 16,
      style: const TextStyle(
        color: Styles.t1Color,
      ),
      underline: Container(
        height: 2,
        color: Constants.purpleDark,
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
    );
  }
}

import 'package:es_flutter_component/es_slider/es_slide_indicator.dart';
import 'package:es_flutter_component/resources/Constants/constants.dart';
import 'package:flutter/material.dart';

class EsDropDownButton extends StatefulWidget {
  final List<String> items;
  final List<VoidCallback> onTapItems;


  EsDropDownButton(
      {Key? key,
      required this.items,
      required this.onTapItems,
      })
      : super(key: key);

  @override
  State<EsDropDownButton> createState() => _EsDropDownButton();
}

class _EsDropDownButton extends State<EsDropDownButton> {
  late String dropdownValue = widget.items[0];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down),
      elevation: 16,
      style: const TextStyle(
        color: Constants.purpleDark,
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

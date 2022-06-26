import 'package:es_flutter_component/es_slider/es_slide_indicator.dart';
import 'package:es_flutter_component/constants.dart';
import 'package:es_flutter_component/es_text/es_label_text.dart';
import 'package:flutter/material.dart';

class EsBorderedDropDownButton extends StatefulWidget {
  final List<String> items;
  final List<VoidCallback> onTapItems;
  final  hint;
  final icon;
  final fillColor;
  // final Color hintColor;
  final  Color borderColor;
  final double borderRadiusDimension;


  EsBorderedDropDownButton(
      {Key? key,
      required this.items,
      required this.onTapItems,
      this.hint,
      this.icon,
        this.fillColor = Constants.textFieldFilledColor,
        // this.hintColor=Constants.ordinaryText,
        this.borderColor=Constants.ordinaryText,
        this.borderRadiusDimension = Constants.borderRadiusDimension,
      })
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
        icon: const Icon(Icons.keyboard_arrow_down,color: Constants.ordinaryText,),
        hint: EsLableText(data: widget.hint,),
        value: dropdownValue,
        decoration: const InputDecoration(
          hintStyle: TextStyle(color:Color(0xffA1A1A1)),
          filled: true,
          fillColor: Constants.textFieldFilledColor,
          contentPadding: EdgeInsets.symmetric(
              vertical: Constants.paddingDimension,
              horizontal: Constants.paddingDimension),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Constants.borderRadiusDimension)),

          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(Constants.borderRadiusDimension)),
            borderSide: BorderSide(color:Color(0xffA1A1A1))
            // borderSide:BorderSide(color:widget.borderColor ),
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
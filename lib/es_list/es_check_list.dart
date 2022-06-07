import 'package:es_flutter_component/es_list/es_ordinary_list.dart';
import 'package:flutter/material.dart';


class EsCheckList extends StatefulWidget {
  List<Widget> items;

  EsCheckList({Key? key,required this.items}) : super(key: key);
  late List<bool> _value =List.generate(items.length, (index) => false);

  @override
  State<EsCheckList> createState() => _EsCheckList();
}

class _EsCheckList extends State<EsCheckList> {
  @override
  Widget build(BuildContext context) {
    return EsOrdinaryList(
        itemList: List.generate(
            widget.items.length,
            (index) => CheckboxListTile(
                  title: widget.items[index],
                  value: widget._value[index],
                  onChanged: (bool? value) {
                    setState(() {
                      widget._value[index] = value!;
                    });
                  },
                  // secondary: const Icon(Icons.hourglass_empty),
                )));
  }
}

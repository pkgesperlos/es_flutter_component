import 'package:flutter/material.dart';

class EsSimpleModelDropDown extends StatefulWidget {
  String value;
  String initialTitle;
  String idName;
  String valueName;
  List? list;
  Function(String id)? onChange;

  EsSimpleModelDropDown(
      {
        this.value = "",
        this.list,
        this.onChange,
        this.idName = "_id",
        this.valueName = "title",
        this.initialTitle = "انخاب کتید"});

  @override
  State<StatefulWidget> createState() {
    return _EsSimpleModelDropDownState();
  }
}

class _EsSimpleModelDropDownState extends State<EsSimpleModelDropDown> {
  String _value = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = widget.value;

    widget.list!
        .insert(0, {widget.idName: "", widget.valueName: widget.initialTitle});
  }

  @override
  Widget build(BuildContext context) {



    return DropdownButton(
        isExpanded: true,
        value: _value,
        items: widget.list!
            .map((model) => DropdownMenuItem(
          value: model[widget.idName],
          child: Text(model[widget.valueName]),
        ))
            .toList(),
        onChanged: (value) {
          setState(() {
            _value = value.toString();

            widget.onChange!(value.toString());
          });
        });
  }

  @override
  void didUpdateWidget(covariant EsSimpleModelDropDown oldWidget) {
    _value = widget.value;
    widget.list!
        .insert(0, {widget.idName: "", widget.valueName: widget.initialTitle});
    super.didUpdateWidget(oldWidget);
  }
}
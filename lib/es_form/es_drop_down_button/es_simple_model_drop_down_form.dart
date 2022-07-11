import 'package:flutter/material.dart';

class EsSimpleModelDropDownForm extends StatefulWidget {
  String value;
  String initialTitle;
  String idName;
  String valueName;
  List list;
  Function(String id)? onChange;
  FormFieldValidator validator;

  EsSimpleModelDropDownForm(
      {this.value = "",
        this.list = const [],
        this.onChange,
        this.idName = "_id",
        this.valueName = "title",
        this.initialTitle = "انخاب کتید",
      required this.validator
      });

  @override
  State<StatefulWidget> createState() {
    return _EsSimpleModelDropDownForm();
  }
}

class _EsSimpleModelDropDownForm extends State<EsSimpleModelDropDownForm> {
  String _value = "";
  List _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = widget.value;
    _list = widget.list;

    _list.insert(0, {widget.idName: "", widget.valueName: widget.initialTitle});
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        isExpanded: true,
        value: _value,
        validator:widget.validator,
        items: _list.map((model) {
          return DropdownMenuItem(
            value: model[widget.idName],
            child: Text(model[widget.valueName]),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _value = value.toString();

            widget.onChange!(value.toString());
          });
        });
  }

  @override
  void didUpdateWidget(covariant EsSimpleModelDropDownForm oldWidget) {
    super.didUpdateWidget(oldWidget);

    _list = widget.list;

    if (_list.length == oldWidget.list.length - 1) {
      _list.insert(
          0, {widget.idName: "", widget.valueName: widget.initialTitle});
    }
    _value = widget.value;
  }
}

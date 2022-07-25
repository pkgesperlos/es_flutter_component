import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class EsCustomCheckBox extends StatefulWidget {
   EsCustomCheckBox(
      this.nonSelectedIcon,
      this.selectedIcon,
      {Key? key,
        required this.onSelect,
        required this.value,
         })
      : super(key: key);

  final Widget nonSelectedIcon;
  final Widget selectedIcon;
  bool value;

  final ValueChanged<bool> onSelect;


  @override
  _EsCustomCheckBoxState createState() => _EsCustomCheckBoxState();
}

class _EsCustomCheckBoxState extends State<EsCustomCheckBox> {
  bool _selected =false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selected=widget.value;
  }

  void _onTap() {
    setState(() {
      _selected = !_selected;
    });
    widget.onSelect(_selected);
  }

  @override
  Widget build(BuildContext context) {


    return Container(

      child: InkWell(
        onTap: (){
          _onTap();
        },
        child: _selected?widget.selectedIcon:widget.nonSelectedIcon,
      )
    );
  }
}
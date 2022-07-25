import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';

import '../../resources/Constants/constants.dart';
import '../../resources/Constants/styles.dart';

///this class is a customized text field that use in whole of app
class EsTextField extends StatefulWidget {
  String? hint = "";
  TextInputType? textInput = TextInputType.text;
  TextEditingController tec = new TextEditingController();
  TextAlign? textAlign;
  int? maxLength;
  int maxLines = 1;
  bool checkRegex = false;
  bool border;
  bool obscure;
  bool repeatedPassword;
  TextEditingController? controller = TextEditingController();
  ValueChanged<String>? onChanged;
  void Function()? onEditingComplete;
  String Function(String value)? checkRepeat;
  FocusNode? focusNode;
  FocusNode? nextFocusNode;
  Color? fillColor;
  final Icon? icon;

  EsTextField({
    this.hint,
    this.textInput,
    this.textAlign,
    this.maxLength,
    this.controller,
    this.onChanged,
    this.onEditingComplete,
    this.maxLines = 1,
    this.repeatedPassword = false,
    this.border = false,
    this.checkRepeat,
    this.checkRegex = false,
    this.obscure = false,
    this.focusNode,
    this.nextFocusNode,
    this.fillColor,
    this.icon,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EsTextFieldFormState();
  }
}

class _EsTextFieldFormState extends State<EsTextField> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  void didUpdateWidget(EsTextField oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(

      focusNode: widget.focusNode,
      maxLength: widget.maxLength,
      controller: widget.controller,
      onChanged: widget.onChanged,
      onEditingComplete:widget.onEditingComplete ,
      keyboardType: widget.textInput,
      maxLines: widget.maxLines,
      obscureText: widget.obscure,
      onFieldSubmitted: (v) {
        if (widget.nextFocusNode != null)
          FocusScope.of(context).requestFocus(widget.nextFocusNode);
      },
      textAlign: widget.textAlign ?? TextAlign.right,
      style:Styles.inputStyle(context),
      decoration: decoration(),
    );
  }


  decoration() {
    bool isObscure = false;
    if (widget.hint == "رمز عبور" || widget.hint == "تکرار رمز عبور")
      isObscure = true;

    if (isObscure) {
      return InputDecoration(

          contentPadding: EdgeInsets.only(right: Constants.borderRadiusDimension),
          filled:widget.fillColor==null?false:true ,
          fillColor: widget.fillColor ?? Styles.t6Color,
          suffixIcon: InkWell(
            onTap: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                widget.obscure = !widget.obscure;
              });
            },
            child: Icon(
                widget.obscure ? Icons.visibility : Icons.visibility_off,
                color: Colors.black38),
          ),
          alignLabelWithHint: true,
          border: widget.border
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))
              : null,
          enabledBorder: widget.border
              ? OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)))
              : null,
          labelText: widget.hint,
          labelStyle: Styles.inputStyle(context));
    } else {
      return new InputDecoration(
          filled:widget.fillColor==null?false:true ,
          fillColor: widget.fillColor ?? Styles.t6Color,
          prefixIcon: widget.icon,
          alignLabelWithHint: true,
          border: widget.border
              ? OutlineInputBorder(
              borderSide: BorderSide(color:widget.fillColor??Styles.t7Color),
                  borderRadius: BorderRadius.all(Radius.circular(Constants.borderRadiusDimension)))
              : null,
          enabledBorder: widget.border
              ? OutlineInputBorder(
              borderSide: BorderSide(color:widget.fillColor??Styles.t7Color),
              borderRadius: BorderRadius.all(Radius.circular(8)))
              : null,
          labelText: widget.hint,
          labelStyle: Styles.inputStyle(context),
          contentPadding:
              EdgeInsets.only(left: 8, right: 8, bottom: 12, top: 12));
    }
  }
}

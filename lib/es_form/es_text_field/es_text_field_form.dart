import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:flutter/material.dart';

import '../../resources/Constants/constants.dart';
import '../../resources/Constants/styles.dart';

///this class is a customized text field that use in whole of app
class EsTextFieldForm extends StatefulWidget {
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
  FocusNode? focusNode;
  FocusNode? nextFocusNode;
  String? Function(String?)? validator;
  Color? fillColor;
  final Icon? icon;
  EsTextFieldForm({
    this.hint,
    this.textInput,
    this.textAlign,
    this.maxLength,
    this.controller,
    this.onChanged,
    this.maxLines = 1,
    this.repeatedPassword = false,
    this.border = false,
    this.checkRegex = false,
    this.obscure = false,
    this.focusNode,
    this.nextFocusNode,
    required this.validator,
    this.fillColor,
    this.icon,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EsTextFieldFormState();
  }
}

class _EsTextFieldFormState extends State<EsTextFieldForm> {
  late String Function(String value) _checkRepeat;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didUpdateWidget(EsTextFieldForm oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        focusNode: widget.focusNode,
        validator: widget.validator,
        maxLength: widget.maxLength,
        controller: widget.controller,
        onChanged: widget.onChanged,
        keyboardType: widget.textInput,
        maxLines: widget.maxLines,
        obscureText: widget.obscure,
        onFieldSubmitted: (v) {
          if (widget.nextFocusNode != null)
            FocusScope.of(context).requestFocus(widget.nextFocusNode);
        },
        textAlign: widget.textAlign ?? TextAlign.right,
        style: Styles.inputStyle(context),
        decoration: decoration(),
      ),
    );
  }

  decoration() {
    bool isObscure = false;
    if (widget.hint == "رمز عبور" || widget.hint == "تکرار رمز عبور")
      isObscure = true;

    if (isObscure) {
      return InputDecoration(
        filled:widget.fillColor==null?false:true ,
          fillColor: widget.fillColor ?? Styles.t6Color,
          contentPadding:
              EdgeInsets.only(right: Constants.borderRadiusDimension),
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
              borderSide: BorderSide(color:widget.fillColor??Styles.t7Color),
                  borderRadius: BorderRadius.all(Radius.circular(8)))
              : null,
          enabledBorder:  widget.border
              ? OutlineInputBorder(
              borderSide: BorderSide(color:widget.fillColor??Styles.t7Color),
              borderRadius: BorderRadius.all(
                  Radius.circular(Constants.borderRadiusDimension)))
              : null,
          labelText: widget.hint,
          labelStyle: Styles.inputStyle(context));
    } else {
      return new InputDecoration(
          prefixIcon: widget.icon,
          filled: widget.fillColor==null?false:true ,
          fillColor: widget.fillColor ?? Styles.t6Color,
          alignLabelWithHint: true,
          border: widget.border
              ? OutlineInputBorder(

                  borderRadius: BorderRadius.all(
                      Radius.circular(Constants.borderRadiusDimension)))
              : null,
          enabledBorder:  widget.border
              ? OutlineInputBorder(
              borderSide: BorderSide(color: Styles.t7Color),
              borderRadius: BorderRadius.all(
                  Radius.circular(Constants.borderRadiusDimension)))
              : null,

          labelText: widget.hint,
          labelStyle: Styles.inputStyle(context),
          contentPadding:
              EdgeInsets.only(left: 8, right: 8, bottom: 12, top: 12));
    }
  }
}

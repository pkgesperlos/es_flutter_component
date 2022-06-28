import 'package:es_flutter_component/images/Constants/dims.dart';
import 'package:flutter/material.dart';

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
  String Function(String value)? checkRepeat;
  FocusNode? focusNode;
  FocusNode? nextFocusNode;

  EsTextField({
    this.hint,
    this.textInput,
    this.textAlign,
    this.maxLength,
    this.controller,
    this.onChanged,
    this.maxLines = 1,
    this.repeatedPassword = false,
    this.border = false,
    this.checkRepeat,
    this.checkRegex = false,
    this.obscure = false,
    this.focusNode,
    this.nextFocusNode,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EsTextFieldFormState();
  }
}

class _EsTextFieldFormState extends State<EsTextField> {
  late String Function(String value) _checkRepeat;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkRepeat = widget.checkRepeat!;
  }

  @override
  void didUpdateWidget(EsTextField oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    _checkRepeat = widget.checkRepeat!;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        focusNode: widget.focusNode,
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
        style: new TextStyle(fontSize: Dims.h3FontSize(context)),
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
          contentPadding: EdgeInsets.only(right: 8),
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
          labelText: widget.hint,
          labelStyle: TextStyle(fontSize: 16));
    } else {
      return new InputDecoration(
          alignLabelWithHint: true,
          border: widget.border
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))
              : null,
          labelText: widget.hint,
          labelStyle: TextStyle(fontSize: 16),
          contentPadding:
              EdgeInsets.only(left: 8, right: 8, bottom: 12, top: 12));
    }
  }
}

import 'package:es_flutter_component/images/Constants/dims.dart';
import 'package:flutter/material.dart';


///this class is a customized text field that use in whole of app
class EsTextField extends StatefulWidget {
  String hint = "";
  TextInputType textInput = TextInputType.text;
  TextEditingController tec = new TextEditingController();
  TextAlign textAlign;
  int maxLength;
  int maxLines = 1;
  bool checkRegex = false;
  bool border;
  bool obscure;
  bool repeatedPassword;
  TextEditingController controller = TextEditingController();
  ValueChanged<String> onChanged;
  String Function(String value)? checkRepeat;
  FocusNode focusNode = FocusNode();
  FocusNode nextFocusNode = FocusNode();
  final bool needValidate;

  EsTextField(
      {required this.hint,
        required this.textInput,
        required this.textAlign,
        required this.maxLength,
        required this.controller,
        required this.onChanged,
        this.maxLines = 1,
        this.repeatedPassword = false,
        this.border = false,
        this.checkRepeat,
        this.checkRegex = false,
        this.obscure = false,
        required this.focusNode,
        required this.nextFocusNode,
        this.needValidate = true});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EsTextFieldState();
  }
}

class _EsTextFieldState extends State<EsTextField> {
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
        validator: widget.needValidate?doValidate(widget.controller.text):null,
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
        textAlign:
        widget.textAlign == null ? TextAlign.right : widget.textAlign,
        style:
        new TextStyle(fontSize: Dims.h3FontSize(context)),
        decoration: decoration(),
      ),
    );
  }

  RegExp phoneReg = new RegExp(
    "(09)[0-9]{9}",
    caseSensitive: false,
    multiLine: false,
  );
  RegExp emailReg = new RegExp(
    r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    caseSensitive: false,
    multiLine: false,
  );
  RegExp number = new RegExp(
    "[0-9]",
    caseSensitive: false,
    multiLine: false,
  );

  doValidate(String value) {
    if (value.isEmpty) {
      return "این قسمت نمی تواند خالی باشد";
    } else if (value.isNotEmpty &&
        widget.textInput == TextInputType.emailAddress) {
      if (emailReg.hasMatch(value)) {
        return null;
      } else {
        return "ایمیل به درستی وارد نشده است";
      }
    } else if (value.isNotEmpty &&
        widget.textInput ==
            TextInputType.numberWithOptions(decimal: false) ||
        widget.textInput == TextInputType.number) {
      if (number.hasMatch(value)) {
        return null;
      } else {
        return "مقدار حتما باید عدد باشد";
      }
    } else if (value.isNotEmpty && widget.textInput == TextInputType.phone) {
      if (phoneReg.hasMatch(value)) {
        return null;
      } else {
        return "شماره همراه به درستی وارد نشده است";
      }
    } else if (value.isNotEmpty && widget.obscure) {
      if (widget.repeatedPassword) {
        return _checkRepeat(value);
      } else {
        if (value.length > 3) {
          return null;
        } else {
          return "تعداد حروف باید بیشتر از6 حرف باشد ";
        }
      }
    } else if (widget.maxLength != null) {
      if (value.length == widget.maxLength) {
        return null;
      } else {
        return "تعداد کاراکترها کمتر از تعداد مورد نیاز است";
      }
    } else {
      return null;
    }
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
            child: Icon(widget.obscure ? Icons.visibility : Icons.visibility_off,
                color: Colors.black38),
          ),

          alignLabelWithHint: true,
          border: widget.border
              ? OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)))
              : null,
          labelText: widget.hint,
          labelStyle: TextStyle(fontSize: 16)
      );
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
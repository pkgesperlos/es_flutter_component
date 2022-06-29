import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
///this class is a customized text field that use in whole of app
class EsSpecificTextField extends StatefulWidget {
  String? hint = "";
  TextInputType? textInput = TextInputType.text;
  TextEditingController tec = new TextEditingController();
  TextAlign? textAlign;
  int? maxLength;
  int? maxLines = 1;
  bool? checkRegex = false;
  bool? border = false;
  TextEditingController? controller = TextEditingController();
  ValueChanged<String>? onChanged;

  EditTextController? editTextController = EditTextController();

  EsSpecificTextField({this.hint});

  EsSpecificTextField.withInput({this.hint, this.textInput, this.textAlign});

  EsSpecificTextField.withMaxLength(
      {this.hint, this.textInput, this.textAlign, this.maxLength});

  EsSpecificTextField.checker(
      {this.hint,
      this.textInput,
      this.textAlign,
      this.maxLength,
      this.controller,
      this.onChanged,
      this.editTextController,
      this.checkRegex})
      : assert(editTextController != null);

  EsSpecificTextField.text(
      {this.hint,
      this.textInput,
      this.textAlign,
      this.maxLength,
      this.controller,
      this.onChanged,
      this.maxLines,
      this.checkRegex,
      this.border = false});


  EsSpecificTextField.form(
      {this.hint,
        this.textInput,
        this.textAlign,
        this.maxLength,
        this.controller,
        this.onChanged,
        this.maxLines,
        this.border,
        this.checkRegex
      });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EsSpecificTextField();
  }
}

class _EsSpecificTextField extends State<EsSpecificTextField> {
  Color borderColor = Colors.black54;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if(widget.checkRegex == null){
      widget.checkRegex = false;
    }
    if(widget.border == null){
      widget.border = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        maxLength: widget.maxLength,
        controller: widget.controller,
        onChanged: checkChange,
        keyboardType: widget.textInput,
        maxLines: widget.maxLines,
        textAlign:
        widget.textAlign ?? TextAlign.right ,
        style:Styles.inputStyle(context),
        decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor),
              borderRadius:
              BorderRadius.all(Radius.circular(Dims.h2BorderRadius(context)))),
          contentPadding: EdgeInsets.all(Dims.h3Padding(context)),
          alignLabelWithHint: false,
          border: OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(Dims.h2BorderRadius(context)))),
          labelText: widget.hint,
          labelStyle: Styles.inputStyle(context),
        ),
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

  checkChange(String value) {

    if(widget.onChanged != null) widget.onChanged!(value);
    if (value.length > 0) {
      setState(() {
        borderColor = Colors.red;

        widget.editTextController?.isAccepted = false;
      });

      checkSuccess(value);
    } else {
      setState(() {
        borderColor = Colors.black54;

        widget.editTextController?.isAccepted = false;
      });
    }
  }

  void checkSuccess(String value) {
    if (widget.checkRegex!) {
      if (widget.textInput == TextInputType.phone && phoneReg.hasMatch(value)) {
        setAccept();
      } else if (widget.textInput == TextInputType.emailAddress &&
          emailReg.hasMatch(value)) {
        setAccept();
      } else {
        setState(() {
          widget.editTextController?.isAccepted = false;
        });
      }
    } else {
      if (widget.maxLength != null) {
        print(widget.maxLength);

        if (value.length == widget.maxLength) {
          setAccept();
        } else {
          setState(() {
            widget.editTextController?.isAccepted = false;
          });
        }
      } else {
        setAccept();
      }
    }
  }

  setAccept() {
    setState(() {
      borderColor = Colors.green;
      widget.editTextController?.isAccepted = true;
    });
  }
}

class EditTextController {
  bool _isAccepted = false;

  bool get isAccepted => _isAccepted;

  set isAccepted(bool value) {
    _isAccepted = value;
  }
}

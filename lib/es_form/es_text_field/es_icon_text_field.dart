import 'package:es_flutter_component/resources/Constants/dims.dart';
import 'package:es_flutter_component/resources/Constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'es_specific_text_field.dart';
///this class is a customized text field that use in whole of app
class EsIconTextField extends StatefulWidget {
  String? hint = "";
  TextInputType? textInput = TextInputType.text;
  TextEditingController tec = new TextEditingController();
  TextAlign? textAlign;
  int? maxLength;
  int? maxLines = 1;
  bool? checkRegex = false;
  bool? border = false;
  Color? fillColor ;
  Color? borderColor ;
  Widget icon;
  TextEditingController? controller = TextEditingController();
  ValueChanged<String>? onChanged;

  EditTextController? editTextController = EditTextController();

  EsIconTextField({this.hint,required this.icon});

  EsIconTextField.withInput({this.hint, this.textInput, this.textAlign,required this.icon});

  EsIconTextField.withMaxLength(
      {this.hint, this.textInput, this.textAlign, this.maxLength,required this.icon});

  EsIconTextField.checker(
      {this.hint,
      this.textInput,
      this.textAlign,
      this.maxLength,
      this.controller,
      this.onChanged,
      this.editTextController,
      this.fillColor,
      this.borderColor,required this.icon,
      this.checkRegex})
      : assert(editTextController != null);

  EsIconTextField.text(
      {this.hint,
      this.textInput,
      this.textAlign,
      this.maxLength,
      this.controller,
      this.onChanged,
      this.maxLines,
      this.checkRegex,
      this.fillColor,
      this.borderColor,
  required this.icon,this.border = false});


  EsIconTextField.form(
      {this.hint,
        this.textInput,
        this.textAlign,
        this.maxLength,
        this.controller,
        this.onChanged,
        this.maxLines,
        this.border,
        this.fillColor,
        this.borderColor,
        this.checkRegex,
  required this.icon
      });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _EsIconTextField();
  }
}

class _EsIconTextField extends State<EsIconTextField> {
  Color borderColor = Styles.t7Color;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    borderColor = widget.borderColor??Styles.t7Color;
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
          isDense: true,
          suffixIcon: Container(
              width: Dims.h0Padding(context)*2.5,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(right: BorderSide(color:Color(0xffAAAFB6)))
              ),
              child: widget.icon
          ),
          filled:widget.fillColor==null?false:true ,
          fillColor: widget.fillColor?? Styles.t6Color,

          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor??Styles.t7Color),
              borderRadius:
              BorderRadius.all(Radius.circular(Dims.h2BorderRadius(context)))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:borderColor),
              borderRadius:
              BorderRadius.all(Radius.circular(Dims.h2BorderRadius(context)))),
          contentPadding: EdgeInsets.all(Dims.h1Padding(context)),
          alignLabelWithHint: false,
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(color: widget.borderColor??Styles.t7Color),
          //     borderRadius:
          //     BorderRadius.all(Radius.circular(Dims.h2BorderRadius(context)))),
          // disabledBorder: OutlineInputBorder(
          //   borderSide: BorderSide(color: widget.borderColor??Styles.t7Color),
          //     borderRadius:
          //     BorderRadius.all(Radius.circular(Dims.h2BorderRadius(context)))),

          hintText: widget.hint,
          hintStyle:  Styles.inputStyle(context),

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
        borderColor = widget.borderColor??Styles.t7Color;

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


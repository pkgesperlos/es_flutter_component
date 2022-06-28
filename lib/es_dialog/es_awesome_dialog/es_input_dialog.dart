

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../es_form/es_text_field/es_text_field_hj.dart';
import '../../images/Constants/constants.dart';

class EsInputDialog extends StatefulWidget {
  String text;
  String title;
  String desc;
  Color buttonColor;
  Color buttonFontColor;
  EsTextFieldHj esTextField1;
  EsTextFieldHj esTextField2;
  EsInputDialog({
    required this.text,
    required this.title,
    required this.desc,
    required this.esTextField1,
    required this.esTextField2,
    this.buttonColor=Constants.inputButtonColor,
    this.buttonFontColor=Constants.buttonFontColor,
  });

  @override
  State<StatefulWidget> createState() {
    return _EsInputDialog();
  }

}
class _EsInputDialog extends State<EsInputDialog>{


  @override
  Widget build(BuildContext context) {
    return Center(
        child: AnimatedButton(
          width: Constants.buttonSizeX*4,
          height: Constants.buttonSizeY,
          text: widget.text,
          color: widget.buttonColor,
          // buttonFontColor: widget.buttonFontColor,
        pressEvent: () {
      AwesomeDialog dialog;
      dialog = AwesomeDialog(
        context: context,
        animType: AnimType.SCALE,
        dialogType: DialogType.INFO,
        keyboardAware: true,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                'Form Data',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 0,
                color: Colors.blueGrey.withAlpha(40),
                child:widget.esTextField1
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                elevation: 0,
                color: Colors.blueGrey.withAlpha(40),
                // child: TextFormField(
                //   autofocus: true,
                //   keyboardType: TextInputType.multiline,
                //   // maxLengthEnforced: true,
                //   minLines: 2,
                //   maxLines: null,
                //   decoration: InputDecoration(
                //     border: InputBorder.none,
                //     labelText: 'Description',
                //     prefixIcon: Icon(Icons.text_fields),
                //   ),
                // ),
                child: widget.esTextField2,
              ),
              SizedBox(
                height: 10,
              ),
              // AnimatedButton(
              //     text: 'Close',
              //     pressEvent: () {
              //       dialog.dismiss();
              //     })
            ],
          ),
        ),
      )..show();
    },

    ));
  }

}

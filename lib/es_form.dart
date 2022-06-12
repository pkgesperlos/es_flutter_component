import 'package:es_flutter_component/es_form/es_checkbox.dart';
import 'package:es_flutter_component/es_form/es_text_field.dart';
import 'package:flutter/material.dart';


import 'package:validators/validators.dart';

class EsForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EsForm();
  }
}

class _EsForm extends State<EsForm> {
  final _formkey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    // print(AppLocalizations.of(context)?.localeName=='en');
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: EdgeInsets.only(top: 50, right: 15,left: 15),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.black54,
                    )),
                Form(
                  key: _formkey,
                  child: Column(
                    children: <Widget>[
                      EsTextField(
                        type: "AppLocalizations.of(context)!.username",
                        hint: "AppLocalizations.of(context)!.usernamehint",
                        validator: (text) {
                          if (isEmail(text)) {
                            return "It is Email";
                          } else if (isNumeric(text)) {
                            return "It is numeric";
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      EsTextField(
                        type: "AppLocalizations.of(context)!.password",
                        hint: "AppLocalizations.of(context)!.passwordhint",
                        validator: (text) {
                          if (text.toString().length < 4) {
                            return "It is too short";
                          }
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      EsCheckBox(
                        title: Text("با قوانین و مقررات سایت موافقم."),
                        validator: (value) {
                          if (!value!) {
                            return "It is neccessary!";
                          }
                        },
                        onSaved: (bool? newValue) {},
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  child: Text("AppLocalizations.of(context)!.login"),
                  // child: Text(Translations.of(context).text("login")),
                  onPressed: () {
                    // _formkey.currentState?.validate();
                    Navigator.pushNamed(
                        context, '/login');
                  },
                )
              ],
            )));
  }
}

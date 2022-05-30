import 'package:flutter/material.dart';
import 'es_textfield.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // GlobalKey key = GlobalKey();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: ExTextField(type: 'user'),
      ),
    );
  }
}



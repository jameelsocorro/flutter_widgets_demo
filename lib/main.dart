import 'package:flutter/material.dart';
import 'package:flutter_widgets_demo/screens/custom_button_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Custom Widgets',
      theme: ThemeData(fontFamily: 'SF_Pro_Text'),
      home: CustomButtonDemo(),
    );
  }
}

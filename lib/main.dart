import 'package:demo_app/ui_plant/page1.dart';
import 'package:demo_app/widget/floating_action_button.dart';
import 'package:demo_app/widget/list_demo.dart';
import 'package:demo_app/widget/spin.dart';
import 'package:demo_app/widget/spin2.dart';
import 'package:demo_app/widget/wrapWidgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Spin2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:demo_app/widget/spin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class Spin2 extends StatefulWidget {
  const Spin2({super.key});

  @override
  State<Spin2> createState() => _Spin2State();
}

class _Spin2State extends State<Spin2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext context) => Spin()));
          },
          child: Container(
            height: 50,
            width: 100,
            color: Colors.red,
            child: Center(child: Text("Spin")),
          ),
        )
      ],
    ));
  }
}

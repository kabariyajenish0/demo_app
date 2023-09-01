import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class Spin extends StatefulWidget {
  const Spin({super.key});

  @override
  State<Spin> createState() => _SpinState();
}

class _SpinState extends State<Spin> {
  final StreamController<int> controller = StreamController<int>();
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: FortuneWheel(
              animateFirst: false,
              selected: controller.stream,
              items: [
                FortuneItem(child: Text('Han Solo')),
                FortuneItem(child: Text('Yoda')),
                FortuneItem(child: Text('100')),
                FortuneItem(child: Text('250')),
                FortuneItem(child: Text('50')),
                //   FortuneItem(child: Text('10')),
                //   FortuneItem(child: Text("75")),
              ],
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              setState(() {
                select = Random().nextInt(4);
              });
            },
            child: Container(
              height: 50,
              width: 100,
              color: Colors.blue,
              child: Center(
                child: Text("spin"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

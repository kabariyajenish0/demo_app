import 'package:flutter/material.dart';

class WrapWidgetDemo extends StatefulWidget {
  const WrapWidgetDemo({super.key});

  @override
  State<WrapWidgetDemo> createState() => _WrapWidgetDemoState();
}

class _WrapWidgetDemoState extends State<WrapWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            children: [
              Container(
                height: 50,
                width: 100,
                color: Colors.teal,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.teal,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.teal,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.pink,
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.yellowAccent,
              ),
              SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}

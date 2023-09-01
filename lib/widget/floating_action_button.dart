import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatefulWidget {
  const FloatingActionButtonDemo({super.key});

  @override
  State<FloatingActionButtonDemo> createState() =>
      _FloatingActionButtonDemoState();
}

class _FloatingActionButtonDemoState extends State<FloatingActionButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: Icon(Icons.edit),
            elevation: 20,
            tooltip: "edit",
            splashColor: Colors.pink,
            mini: true,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: Icon(Icons.call),
            elevation: 20,
            tooltip: "Call",
            splashColor: Colors.pink,
            // mini: true,
          ),
        ],
      ),
    );
  }
}

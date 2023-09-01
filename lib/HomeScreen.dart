import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key, this.image, this.name}) : super(key: key);

  final image;
  final name;
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.grey.shade300,
            child: Image.asset(widget.image),
          ),
          SizedBox(
            height: 30,
          ),
          Text(widget.name)
        ],
      ),
    );
  }
}

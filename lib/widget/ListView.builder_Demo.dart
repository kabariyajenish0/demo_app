import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List name = [
    Colors.yellow,
    Colors.red,
    Colors.pink,
    Colors.green,
    Colors.orange,
    Colors.blue,
    Colors.brown,
    Colors.black,
    Colors.white,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 360,
            // color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: name[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

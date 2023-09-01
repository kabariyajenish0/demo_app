import 'package:flutter/material.dart';

class GridViewDemo1 extends StatefulWidget {
  const GridViewDemo1({super.key});

  @override
  State<GridViewDemo1> createState() => _GridViewDemo1State();
}

class _GridViewDemo1State extends State<GridViewDemo1> {
  // bool abc = false;
  // void kishan() {
  //   setState(() {
  //     abc = !abc;
  //   });
  // }

  List colors = [
    Colors.red.shade200,
    Colors.yellowAccent.shade200,
    Colors.green.shade200,
    Colors.blue.shade200,
    Colors.pink.shade200,
    Colors.teal.shade200,
    Colors.black26,
    Colors.red.shade200,
    Colors.yellowAccent.shade200,
    Colors.green.shade200,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: InkWell(
      //     onTap: () {
      //       kishan();
      //     },
      //     child: Container(
      //         color: abc == false ? Colors.red : Colors.yellowAccent)),
      body: Column(
        children: [
          Container(
            height: 600,
            width: 365,
            color: Colors.black26,
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 3 / 4),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 130,
                  width: 90,
                  color: colors[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

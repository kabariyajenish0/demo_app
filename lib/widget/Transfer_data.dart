import 'package:demo_app/HomeScreen.dart';

import 'package:flutter/material.dart';

class DataTransfer extends StatelessWidget {
  DataTransfer({Key? key}) : super(key: key);

  List<Map<String, dynamic>> details = [
    {"text": "1", "photo": "assets/image/plant2.png"},
    {"text": "2", "photo": "assets/image/plant.png"},
    {"text": "3", "photo": "assets/image/plant3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: List.generate(
                  details.length,
                  (index) => Column(
                        children: [
                          Image.asset(
                            details[index]['photo'],
                            height: 200,
                            width: 200,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(details[index]['text']),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePageScreen(
                                            name: details[index]['text'],
                                            image: details[index]['photo'],
                                          )));
                            },
                            child: Text("Transfer"),
                          ),
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}

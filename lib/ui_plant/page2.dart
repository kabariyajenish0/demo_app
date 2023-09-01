import 'package:flutter/material.dart';

import '../ui_plant/page3.dart';

class page2 extends StatelessWidget {
  page2({Key? key}) : super(key: key);

  List<Map<String, dynamic>> name = [
    {
      "image": "assets/image/plant6.png",
      "fname": 'Artifical',
      "sname": "Succulent plant"
    },
    {
      "image": "assets/image/plant5.png",
      "fname": 'Decorative',
      "sname": "Indoor Plant"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.short_text, color: Colors.black),
        title: Center(
          child: (Text('Our Shop', style: TextStyle(color: Colors.black))),
        ),
        elevation: 0,
        backgroundColor: Colors.white38,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Image.asset('assets/image/profile.png'),
              onPressed: () => (0),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade300,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                hintText: 'Search...',
                suffixIcon: Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 20),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 243,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.solid,
                          color: Colors.green,
                          blurRadius: 15,
                        )
                      ],
                      color: Color(0xff57855E),
                    ),
                    child: Container(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 25),
                            Text(
                              'Artifical\nAloe Vera\nPlant',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Text(
                            //   'Aloe Vera',
                            //   style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 20,
                            //       fontWeight: FontWeight.bold),
                            // ),
                            // Text(
                            //   'Plant',
                            //   style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 20,
                            //       fontWeight: FontWeight.bold),
                            // ),
                            SizedBox(height: 20),
                            Text(
                              '\$ 120.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.yellow.shade700),
                                Text(
                                  '4.9(64)',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  page3()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        child: Icon(Icons.add),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: -10,
                    left: -245,
                    top: -40,
                    child: Image.asset(
                      "assets/image/plant7.png",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  2,
                  (index) => Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: (MediaQuery.of(context).size.width / 2) - 30,
                        width: (MediaQuery.of(context).size.width / 2) - 30,
                        margin: EdgeInsets.only(left: 5, top: 40, right: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                name[index]['fname'],
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(name[index]['sname'],
                                  style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: -50,
                        bottom: 50,
                        right: -50,
                        top: -76,
                        child: Image.asset(
                          name[index]['image'],
                          height: 180,
                          width: 180,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

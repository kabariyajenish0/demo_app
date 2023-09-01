import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff07002F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Become a",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800)),
                  Text("Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        letterSpacing: 10,
                        fontWeight: FontWeight.w900,
                      )),
                  Text("Developer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 240,
                width: 268,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 10)),
              ),
              Positioned(
                bottom: 10,
                right: -30,
                left: -20,
                child: Image.asset(
                  "assets/image/main_char.png",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 47)),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('NEXT', style: TextStyle(fontSize: 20)),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(268, 60),
              primary: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}

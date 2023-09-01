import 'package:demo_app/ui_plant/page2.dart';
import 'package:flutter/material.dart';

class PlantUi extends StatelessWidget {
  const PlantUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 500,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/backplant.png"),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Find out your",
                            style: TextStyle(
                                fontWeight: (FontWeight.bold),
                                fontSize: 35,
                                color: Colors.white),
                          ),
                          Text(
                            "Companing",
                            style: TextStyle(
                                fontWeight: (FontWeight.bold),
                                fontSize: 35,
                                color: Colors.white),
                          ),
                          Text(
                            "on our Plant shop",
                            style: TextStyle(
                                fontWeight: (FontWeight.bold),
                                fontSize: 35,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    minimumSize: Size(300, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => page2()));
                  },
                  child: Row(
                    children: [
                      Text(
                        'Get Started',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Spacer(),
                      Icon(
                        Icons.double_arrow,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

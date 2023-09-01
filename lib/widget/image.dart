import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
              "https://img.freepik.com/free-photo/lake-mountains_1204-502.jpg?size=626&ext=jpg&ga=GA1.2.1116312914.1682053349&semt=sph"),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Oeschinen Lake Campground",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Oeschinen Lake Campground",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Text("41")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.call,
                            color: Colors.blue,
                          ),
                          Text(
                            "Call",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.near_me,
                            color: Colors.blue,
                          ),
                          Text(
                            "Route",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.blue,
                          ),
                          Text(
                            "Share",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "Next, diagram each row. The first row, called the Title section, has 3 children: a column of text, a star icon, and a number.Its first child, the column, contains 2 lines of text. That first column takes a lot of space, so it must be wrapped in an Expanded widget Next, diagram each row. The first row, called the Title section, has 3 children: a column of text, a star icon, and a number Its first child, the column, contains 2 lines of text. That first column takes a lot of space,so it must be wrapped in an Expanded widget."),
                  ElevatedButton(
                    onLongPress: () {
                      print("Hello.......");
                    },
                    onPressed: () {
                      print("Hello");
                    },
                    child: Text("Welcome"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.pinkAccent),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Hello World",
                        style: TextStyle(color: Colors.pinkAccent),
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  OutlinedButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text("Login to Here"),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.pinkAccent)),
                    child: Center(
                      child: Text(
                        "Hello",
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

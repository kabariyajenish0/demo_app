import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listdemo extends StatelessWidget {
  Listdemo({Key? key}) : super(key: key);

  List<Map<String, dynamic>> name = [{}];

  var data = [
    {
      "id": 7,
      "email": "mailto:michael.lawson@reqres.in.gxddsfdtfdf",
      "first_name": "Michael",
      "last_name": "Lawson",
      "avatar": "https://reqres.in/img/faces/7-image.jpg"
    },
    {
      "id": 8,
      "email": "mailto:lindsay.ferguson@reqres.in",
      "first_name": "Lindsay",
      "last_name": "Ferguson",
      "avatar": "https://reqres.in/img/faces/8-image.jpg"
    },
    {
      "id": 12,
      "email": "mailto:rachel.howell@reqres.in",
      "first_name": "Rachel",
      "last_name": "Howell",
      "avatar": "https://reqres.in/img/faces/12-image.jpg"
    },
    {
      "id": 20,
      "email": "mailto:george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "id": 9,
      "email": "mailto:tobias.funke@reqres.in",
      "first_name": "Tobias",
      "last_name": "Funke",
      "avatar": "https://reqres.in/img/faces/9-image.jpg"
    },
    {
      "id": 22,
      "email": "mailto:byron.fields@reqres.in",
      "first_name": "Byron",
      "last_name": "Fields",
      "avatar": "https://reqres.in/img/faces/10-image.jpg"
    },
    {
      "id": 16,
      "email": "mailto:george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "id": 10,
      "email": "mailto:byron.fields@reqres.in",
      "first_name": "Byron",
      "last_name": "Fields",
      "avatar": "https://reqres.in/img/faces/10-image.jpg"
    },
    {
      "id": 11,
      "email": "mailto:george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "id": 21,
      "email": "mailto:rachel.howell@reqres.in",
      "first_name": "Rachel",
      "last_name": "Howell",
      "avatar": "https://reqres.in/img/faces/12-image.jpg"
    },
    {
      "id": 31,
      "email": "mailto:george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "id": 41,
      "email": "mailto:george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
    {
      "id": 52,
      "email": "mailto:george.edwards@reqres.in",
      "first_name": "George",
      "last_name": "Edwards",
      "avatar": "https://reqres.in/img/faces/11-image.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
        leading: Icon(Icons.menu),
      ),
      body: ListView(
        children: List.generate(
          data.length,
          (index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(data[index]['avatar'].toString()),
            ),
            title: Row(
              children: [
                Text(
                  data[index]['first_name'].toString(),
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.lightBlue,
                      fontSize: 20.5),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  data[index]['last_name'].toString(),
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontSize: 20.5),
                ),
              ],
            ),
            subtitle: Text(
              data[index]['email'].toString(),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ),
        ),
      ),
    );
  }
}

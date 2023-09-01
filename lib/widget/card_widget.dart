import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Uidemo extends StatelessWidget {
  const Uidemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(70)),
          shadowColor: Colors.deepPurple,
          child: InkWell(
            overlayColor: MaterialStateProperty.all(Colors.amber),
            onTap: () {
              print("Hello");
            },
            onLongPress: () {
              print("Hii....");
            },
            child: Ink(
              height: 200,
              width: 200,
              child: Ink.image(
                image: NetworkImage(
                    "https://wallpaperaccess.com/full/1642272.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

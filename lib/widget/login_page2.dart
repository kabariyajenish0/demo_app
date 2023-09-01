import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffebbba7), Color(0xffcfc7f8)],
            //  begin: Alignment.topRight,
            //end: Alignment.topLeft
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const SizedBox(
              width: 1000,
            ),
            const CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Sing in to Continue...",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text("Username",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text("Password",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                  // width: 30,
                ),
                const Text(
                  "Remember Me",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                  // width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text("LOGIN",
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Forget Yours Password",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Spacer(),
            const Text(
              "Don't have a account? Sign Up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

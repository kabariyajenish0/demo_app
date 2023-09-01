import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  List colorsList = [
    Colors.yellowAccent.shade100,
    Colors.teal.shade100,
    Colors.purpleAccent.shade100,
    Colors.red.shade200
  ];

  final PageController pageController = PageController(initialPage: 0);
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container(
          //   height: 600,
          //   width: 360,
          //   //   color: Colors.black26,
          //   child:
          //   PageView(
          //     physics: BouncingScrollPhysics(),
          //     controller: pageController,
          //     onPageChanged: (value) {
          //       // setState(() {
          //       //   selectedIndex = value;
          //       // });
          //     },
          //     children: List.generate(
          //       4,
          //       (index) => Container(
          //         height: 600,
          //         width: 360,
          //         color: colorsList[index],
          //       ),
          //     ),
          //   ),
          // ),

          Container(
              height: 600,
              width: 360,
              //   color: Colors.black26,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                controller: pageController,
                physics: BouncingScrollPhysics(),
                itemCount: colorsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 600,
                    width: 360,
                    color: colorsList[index],
                  );
                },
              )),

          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              colorsList.length,
              (index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    pageController.animateToPage(index,
                        duration: Duration(microseconds: 1),
                        curve: Curves.bounceInOut);
                  },
                  child: Container(
                    height: 10,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: selectedIndex == index
                            ? BorderRadius.circular(20)
                            : BorderRadius.circular(0),
                        border: selectedIndex == index
                            ? Border.all(color: Colors.pink, width: 2)
                            : Border.all(color: Colors.black, width: 2),
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.black26),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

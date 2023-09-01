import 'package:demo_app/product_data.dart';
import 'package:flutter/material.dart';

class GridDemo extends StatelessWidget {
  GridDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return ProductCard(index: index);
        },
        itemCount: productData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 20),
      ),
      // body: Column(
      //   children: [
      //     SizedBox(
      //       height: 300,
      //       child: ListView(
      //           scrollDirection: Axis.horizontal,
      //           children: List.generate(
      //               productData.length, (index) => ProductCard(index: index))),
      //     ),
      //   ],
      // ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final int index;

  const ProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: index.isEven ? 0 : 20,
      ),
      child: SizedBox(
        width: 200,
        child: Material(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.network("${productData[index]['thumbnail']}"),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${productData[index]['title']}",
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "price:",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: "${productData[index]['price']}",
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ], style: TextStyle(color: Colors.black)),
                      overflow: TextOverflow.ellipsis,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Category:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        TextSpan(
                          text: "${productData[index]['category']}",
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ], style: TextStyle(color: Colors.black)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

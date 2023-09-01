import 'package:flutter/material.dart';

class Expansion extends StatelessWidget {
  const Expansion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionTile"),
      ),
      body: Column(
        children: [
          ExpansionTile(
            title: Text("see more"),
            leading: Icon(Icons.comment_bank, color: Colors.yellow),
            backgroundColor: Colors.black12,
            children: [
              ListTile(
                title: Text('first'),
                onLongPress: () {
                  print("hello...");
                },
              ),
              ListTile(title: Text('second')),
              ListTile(title: Text('Third')),
            ],
          ),
          ExpansionTile(
            title: Text("see more"),
            leading: Icon(Icons.comment_bank, color: Colors.yellow),
            backgroundColor: Colors.black12,
            children: [
              ListTile(
                title: Text('first'),
                onLongPress: () {
                  print("hello...");
                },
              ),
              ListTile(title: Text('second')),
              ListTile(title: Text('Third')),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Expansion extends StatelessWidget {
//   const Expansion({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AppBar'),
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ExpansionTile(
//             leading: Icon(Icons.book, color: Colors.pinkAccent, size: 30),
//             title: Text('Days of Week Chart',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//             children: [
//               ListTile(
//                 title: Text('Monday',
//                     style: TextStyle(color: Colors.teal, fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('Tuesday',
//                     style: TextStyle(color: Colors.teal, fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('Wednesday',
//                     style: TextStyle(color: Colors.teal, fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('Thursday',
//                     style: TextStyle(color: Colors.teal, fontSize: 20)),
//               ),
//               /* ListTile(
//                 title: Text('Friday',
//                     style: TextStyle(color: Colors.teal, fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('Saturday',
//                     style: TextStyle(color: Colors.teal, fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('Sunday',
//                     style: TextStyle(color: Colors.teal, fontSize: 20)),
//               ),*/
//             ],
//           ),
//           ExpansionTile(
//             leading: Icon(Icons.book, color: Colors.pinkAccent, size: 30),
//             title: Text('Months of the Year',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 )),
//             children: [
//               ListTile(
//                 title: Text('January',
//                     style: TextStyle(color: Colors.cyan[200], fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('February',
//                     style: TextStyle(color: Colors.cyan[200], fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('March',
//                     style: TextStyle(color: Colors.cyan[200], fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('April',
//                     style: TextStyle(color: Colors.cyan[200], fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('May',
//                     style: TextStyle(color: Colors.cyan[200], fontSize: 20)),
//               ),
//               ListTile(
//                 title: Text('June',
//                     style: TextStyle(color: Colors.cyan[200], fontSize: 20)),
//               ),
//               /*ListTile(
//                 title: Text('July'),
//               ),
//                ListTile(
//                 title: Text('August'),
//               ),
//               ListTile(
//                 title: Text('September'),
//               ),
//               ListTile(
//                 title: Text('October'),
//               ),
//               ListTile(
//                 title: Text('November'),
//               ),
//               ListTile(
//                 title: Text('December'),
//               ),*/
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

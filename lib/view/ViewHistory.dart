import 'package:flutter/material.dart';

class History extends StatefulWidget{
  static String tag = 'Schedules';
  @override
  HistoryState createState() => HistoryState();
}

class HistoryState extends State <History>{
  @override
  Widget build(BuildContext context) {
    return 
    // ListTile(
    //       title: Text("aaaaaaaaaaaaaaaaaa"),
        
    ListView(

      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        ListTile(
          title: Text("aaaaaaaaaaaaaaaaaa"),
        ),
        ListTile(
          title: Text("aaaaaaaaaaaaaaaaaa"),
        ),
        ListTile(
          title: Text("aaaaaaaaaaaaaaaaaa"),
        )
      ],
    );
  }
}

// class HistoryState extends State <History>{
//   Widget tampilkan = Container(
//       child: Row(
//         children: <Widget>[
//           Icon(Icons.work, size: 20),
//           Padding(padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 12.0)),
//           Text("teks", style: TextStyle(fontSize: 14)),
//         ],
//       )
//     );

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Row(
//         children: <Widget>[
//           Image.asset("img/pict.jpg", fit: BoxFit.fitHeight, height: 120, width: 100,),
//           Padding(padding: EdgeInsets.all(4)),
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text("Juduul", style: TextStyle(fontSize: 20)),
//                 tampilkan,
//                 tampilkan,
//                 tampilkan,
//             ],)
//           ),
//           // Text("Lorem Ipsum super panjang breh")
//           //CSearchKerja(),
//         ],
//       )
//     );
//   }
// }

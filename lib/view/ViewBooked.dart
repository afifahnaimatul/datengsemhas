import 'package:flutter/material.dart';
import 'package:oke/view/View.dart';

class Booked extends StatefulWidget{
  static String tag = 'Schedules';
  @override
  BookedState createState() => BookedState();
}

class BookedState extends State <Booked>{

  Card datacard(String name, String nim){
    return Card(
      child: ListTile(
        leading: Image.asset("img/pict.jpg", width: 100),
        title: dataName(name, nim),
        subtitle: Column(
          children: <Widget>[
            Divider(),
            datashow(Icons.alarm, "13:00"),
            datashow(Icons.calendar_today, "17 Agustus 2019"),
            datashow(Icons.person, "14/40 Orang"),
          ],
        ),
      ),
    );
  }

  Padding datashow(IconData icon, String content){
    return Padding(
      padding: EdgeInsets.all(4),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(icon, size: 16)
          ),
          Text(
            content,
            style: TextStyle(
              color: Colors.black
            )
          ),
        ],
      )
    );
  }

  Row dataName(String name, String nim){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold)
            ),
            Text(nim),
          ],
        ),
        Icon(Icons.share)
      ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        datacard("Katie Smith", "1750200000000"),
        datacard("Smith Katie", "1750200000000"),
      ],
    );
  }
}

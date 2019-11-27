import 'package:flutter/material.dart';

class Schedule extends StatefulWidget{
  static String tag = 'Schedules';
  @override
  ScheduleState createState() => ScheduleState();
}

class ScheduleState extends State <Schedule>{
  Container avatar(){
    return Container(
      margin: EdgeInsets.only(right: 16),
      width: 50,
      height: 50,
      child: CircleAvatar(
        backgroundImage: NetworkImage("https://i.pinimg.com/originals/64/71/47/647147ccec441a94063e46e253667f9c.jpg"),
        radius: 32,
      ),
    );
  }

  Column dataName(String name, String nim){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text('175150200000000')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Row(
              children: <Widget>[
                avatar(),
                dataName("Katie Smith", "175150200000000")
              ]
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text('Sebuah tulisan yang menandakan adanya sebuah tulisan di dalam sebuah card yang dapat mendefinisikan sesuatu', ),
            ),
            Text(
              "Jack Brown, S.T, M.T",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold
              )
            ),
          ],
        )
      ),
    );
  }
}

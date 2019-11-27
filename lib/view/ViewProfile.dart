import 'package:flutter/material.dart';
import 'package:oke/view/View.dart';
import 'package:oke/view/ViewSchedule.dart';

class Profile extends StatefulWidget{
  static String tag = 'Schedules';
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State <Profile>{
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            width: 100,
            height: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pinimg.com/originals/64/71/47/647147ccec441a94063e46e253667f9c.jpg"),
              radius: 32,
            ),
          ),
          Text(
            'Katie Smith',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1, bottom: 16),
            child: Text('175150200000000')
          ),
          Schedule()
        ],
    );
  }
}

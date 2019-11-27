import 'package:flutter/material.dart';

class AddSchedule extends StatefulWidget{
  @override
  AddScheduleState createState() => AddScheduleState();
}

class AddScheduleState extends State <AddSchedule>{
  Column input (String toInput, int line){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 18, bottom: 8),
          child: Text(
            toInput,
          )
        ),
        TextField(
          maxLines: line,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "hint",
          ),
        ),
      ],
    );
  }

  // DropdownButton theList(){
  //   return DropdownButton<String>(
  //     // value: dropdownValue,
  //     icon: Icon(Icons.arrow_downward),
  //     iconSize: 24,
  //     elevation: 16,
  //     style: TextStyle(color: Colors.deepPurple),
  //     underline: Container(
  //       height: 2,
  //       color: Colors.deepPurpleAccent,
  //     ),
  //     onChanged: (String newValue) {
  //       setState(() {
  //         // dropdownValue = newValue;
  //       });
  //     },
  //     items: <String>['One', 'Two', 'Free', 'Four']
  //         .map<DropdownMenuItem<String>>((String value) {
  //       return DropdownMenuItem<String>(
  //         value: value,
  //         child: Text(value),
  //       );
  //     }).toList(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text("New Schedule"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          input("Judul Seminar", 2),
          input("Deskripsi Seminar", 5),
          input("Dosen Pengampu", 1),
          input("Program Studi", 1),
          input("Keminatan", 1),
          // theList(),
          input("Ruangan", 1),
          input("Tanggal", 1),
          input("Waktu", 1),
          input("Kuota", 1),
        ],
      )
    );
  }
}
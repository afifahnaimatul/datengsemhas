import 'package:flutter/material.dart';
import 'package:oke/view/ViewProfile.dart';
import 'package:oke/view/ViewSchedule.dart';
import 'package:oke/view/ViewBooked.dart';
import 'package:oke/view/ViewHistory.dart';
import 'package:oke/view/AddSchedule.dart';

class LoginPage extends StatefulWidget{
    static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      //keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'NIM',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      validator: (value) => value.isEmpty? 'NIM required' : null,
      // onSaved: (value) => 
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(  
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context,"/login");
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
      ),
    );
  }
}

class Pages extends StatefulWidget{
    static String tag = 'Pages';
  @override
  PagesState createState() => new PagesState();
}

class PagesState extends State<Pages> {
  int halaman = 1;
  final halamanOpt = [
    Profile(),
    Schedule(),
    Booked(), 
    History()
  ];
  final halamanname = [
    'Profile',
    'Schedule',
    'Booked',
    'History'
  ];
  

  @override

  Widget build(BuildContext context) {
    


    final navBar = BottomNavigationBar(currentIndex: halaman ,
    onTap: (int index){
      setState((){
        halaman =index;
      });

    }, items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.person,color: Colors.blueGrey,),
        title: Text('Profile', style: TextStyle(color: Colors.blueGrey),),
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.list,color: Colors.blueGrey,),
        title: Text('Schedule', style: TextStyle(color: Colors.blueGrey),)
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.bookmark,color: Colors.blueGrey,),
        title: Text('Booked', style: TextStyle(color: Colors.blueGrey),)
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.history,color: Colors.blueGrey,),
        title: Text('History', style: TextStyle(color: Colors.blueGrey),)
        ),
    ],
    );

    return new Scaffold(
      appBar: new AppBar(
        leading: null,
        backgroundColor: Colors.blueGrey,
        title: Text(halamanname[halaman]),
      ),
      backgroundColor: Colors.white,
      body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(16),
          children: <Widget>[
            halamanOpt[halaman]
          
          ], 
        ),  
      bottomNavigationBar: navBar,
      floatingActionButton: new FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context){
          return AddSchedule();
        })),
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
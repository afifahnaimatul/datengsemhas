import 'package:flutter/material.dart';
import 'package:oke/Viewmodel.dart';
import 'package:oke/Presenter.dart';
import 'package:oke/CVM.dart';


class MyHomePage extends StatefulWidget {
    final CounterPresenter presenter;

    MyHomePage(this.presenter, {Key key, this.title}) : super(key: key);

    final String title;

    @override
    _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> implements CounterView {

    CounterViewModel _viewModel;

    @override
    void initState() {
        super.initState();
        this.widget.presenter.counterView = this;
    }

    @override
    void refreshCounter(CounterViewModel viewModel) {
        setState(() {
            this._viewModel = viewModel;
        });
    }


    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text(widget.title),
            ),
            body: new Center(
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        new Text(
                            'You have pushed the button this many times:',
                        ),
                        new Text(
                            _viewModel?.counter.toString(),
                            style: Theme.of(context).textTheme.display1,
                        ),
                    ],
                ),
            ),
            floatingActionButton: new FloatingActionButton(
                onPressed: () => this.widget.presenter.onButton1Clicked(),
                tooltip: 'Increment',
                child: new Icon(Icons.add),
            ),
        );
    }
}

class LoginPage extends StatefulWidget{
    static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'name@email.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
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

//INI DESAIN CARD UNTUK CLASS VIEW SCHEDULE

class Schedule extends StatefulWidget{
  static String tag = 'Schedules';
  @override
  ScheduleState createState() => ScheduleState();
}

class ScheduleState extends State <Schedule>{
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Icon(Icons.person, size: 40,),
            new Column(
            children: <Widget>[
              Text('Nama saya adalah sesuatu'),
              Text('175150200000000')
            ],
          )
        
        ],
        
      ),
      Text('Sebuah tulisan yang menandakan adanya sebuah tulisan di dalam sebuah card yang dapat mendefinisikan sesuatu', )
      ],
      )

    );
  }

}


//INI DESAIN CARD UNTUK CLASS VIEW HISTORY

class History extends StatefulWidget{
  static String tag = 'Schedules';
  @override
  HistoryState createState() => HistoryState();
}

class HistoryState extends State <History>{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Icon(Icons.person, size: 40,),
            new Column(
            children: <Widget>[
              Text('Nama saya adalah sesuatu'),
              Text('175150200000000')
            ],
          )
        
        ],
        
      ),
      Text('Sebuah tulisan yang menandakan adanya sebuah tulisan di dalam sebuah card yang dapat mendefinisikan sesuatu', )
      ],
      )

    );
  }

}


//INI DESAIN CARD UNTUK CLASS VIEW PROFILE

class Profile extends StatefulWidget{
  static String tag = 'Schedules';
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State <Profile>{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Icon(Icons.person, size: 40,),
            new Column(
            children: <Widget>[
              Text('Nama saya adalah sesuatu'),
              Text('175150200000000')
            ],
          )
        
        ],
        
      ),
      Text('Sebuah tulisan yang menandakan adanya sebuah tulisan di dalam sebuah card yang dapat mendefinisikan sesuatu', )
      ],
      )

    );
  }

}


//INI DESAIN CARD UNTUK CLASS VIEW BOOKED

class Booked extends StatefulWidget{
  static String tag = 'Schedules';
  @override
  BookedState createState() => BookedState();
}

class BookedState extends State <Booked>{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Icon(Icons.person, size: 40,),
            new Column(
            children: <Widget>[
              Text('Nama saya adalah sesuatu'),
              Text('175150200000000')
            ],
          )
        
        ],
        
      ),
      Text('Sebuah tulisan yang menandakan adanya sebuah tulisan di dalam sebuah card yang dapat mendefinisikan sesuatu', )
      ],
      )

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
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: <Widget>[
            halamanOpt[halaman]
          
          ], 
        ),  
      bottomNavigationBar: navBar,
    );
  }
}
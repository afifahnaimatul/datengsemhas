import 'package:flutter/material.dart';
import 'package:oke/Viewmodel.dart';
import 'package:oke/presenter/Presenter.dart';
import 'package:oke/CVM.dart';

//STATEFUL FORMAT

// class IdentityProfile extends StatefulWidget {
//   IdentityProfileState createState() => IdentityProfileState();
// }

// class IdentityProfileState extends State<IdentityProfile>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
      
//     );
//   }
// }


//TEMPLATE CARD WITH AVATAR

class CardTemplate extends StatelessWidget{
  Widget identity = Row(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 16),
        width: 50,
        height: 50,
        child: CircleAvatar(
          backgroundImage: NetworkImage("https://i.pinimg.com/originals/64/71/47/647147ccec441a94063e46e253667f9c.jpg"),
          radius: 32,
        ),
      ),
      new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Katie Smith'),
          Text('175150200000000')
        ],
      )
    ],
  );

  Widget data = Row(
    children: <Widget>[

    ],
  );

  @override
  Widget build(BuildContext context){
    return Card(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child:Column(
          children: <Widget>[
            identity,
            Padding(padding: EdgeInsets.all(8)),
            Text('Sebuah tulisan yang menandakan adanya sebuah tulisan di dalam sebuah card yang dapat mendefinisikan sesuatu', )
          ],
        )
      ),
    );
  }
}

//TEMPLATE CARD WITHOUT AVATAR

class CardPlace extends StatelessWidget{
  Row showIcon(IconData icon, String name){
    return Row(
      children: <Widget>[
        Icon(icon, size: 20),
        Padding(padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 12.0)),
        Text(name, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  @override
  Widget build(BuildContext context){
    return Card(
      child: Row(
        children: <Widget>[
          Image.asset("img/pict.jpg", fit: BoxFit.fitHeight, height: 120, width: 100,),
          Padding(padding: EdgeInsets.all(4)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Juduul", style: TextStyle(fontSize: 20)),
                showIcon(Icons.calendar_today, "01 Januari 2020"),
                showIcon(Icons.alarm, "13:00"),
                showIcon(Icons.group, "40 Orang"),
            ],)
          ),
        ],
      )
    );
  }
}

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

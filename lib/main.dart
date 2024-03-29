import 'package:flutter/material.dart';
import 'package:oke/wrapper.dart';
import 'package:oke/presenter/Presenter.dart';
import 'package:oke/view/Login.dart';
import 'package:oke/view/View.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Wrapper(),
      routes: {'/login' : (_) => new Pages()},
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new LoginPage(),
//       routes: {'/login' : (_) => new Pages()},
//     );
//   }
// }
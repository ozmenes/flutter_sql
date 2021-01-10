import 'package:flutter/material.dart';
import 'package:flutter_sql/pages/login.dart';
import 'package:flutter_sql/pages/register.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Sql-Types',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

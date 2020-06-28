import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_think/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'ProductSans',
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

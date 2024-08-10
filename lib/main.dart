import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_prefernces/Profile_Screen.dart';

import 'Login.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
     // home:SplashScreenPage()
      //  home:LoginPage()
        home:ProfileScreen()
    );
  }
}
class SplashScreenPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
   return SplashPageState();
  }
}
class SplashPageState extends State<SplashScreenPage>{
  var _width=200.0;
  var _height=400.0;
  var gradientColor=[Colors.indigo,Colors.blue,Colors.green,Colors.red,Colors.green,Colors.yellow,Colors.orange,Colors.red];

  @override
  void initState() {
   Timer(Duration(seconds: 2),(){
     rotate();
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

     return Scaffold(
    body: Center(
      child: AnimatedContainer(
      child:  Center(child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.w500,fontSize:30,color: Colors.white),)),
      width: _width,
        height: _height, duration:Duration(seconds: 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.indigo,Colors.blue,Colors.green,Colors.red,Colors.green,Colors.yellow,Colors.orange,Colors.red
          ]

          )
        ),
         ),
    ),
     );
  }

  void rotate() {
    _width=400;
    _height=200;
    Timer(Duration(seconds: 3),(){
      rotateAgain();
    });
  setState(() {

  });
  }

  void rotateAgain() {
    _width=200;
    _height=400;
    whereToGo();
    setState(() {

    });
  }

  void whereToGo() {

  }
}
import 'dart:async';

import 'package:flutter/material.dart';

import 'Screens/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Hub',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>  SecondScreen(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Logoutt.jpg"),
                  fit: BoxFit.cover,)
           ),
    ),
          Container(
              alignment: Alignment.center,
              child: Text(
                'Business Hub\n\n',
                style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 27, decoration: TextDecoration.none, ),
              )),
          Container(
              alignment: Alignment.center,
              child: Text(
                'A big business starts small',
                style: TextStyle(color: Colors.black87, fontSize: 18, decoration: TextDecoration.none, fontFamily: 'Itim',),
              )),],),);
    //color: Colors.white,
    //child: Image(assets/images/Logout.jpg),
  }
}


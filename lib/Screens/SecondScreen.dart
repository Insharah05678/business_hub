import 'package:flutter/material.dart';
import 'package:untitled6/Screens/MyCategory.dart';
import 'package:untitled6/main.dart';

import 'MyLogin.dart';
import 'MyRegister.dart';


class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Hub'),
      ),
      body: Container(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                child: ElevatedButton(
                  child: Text('Seller',),
                  onPressed: () {
                    Navigator.push(
                      context as BuildContext,
                      MaterialPageRoute(builder: (BuildContext) => MyRegister()),);},),),
              SizedBox(width: 50),
              Container(
                child: ElevatedButton(
                  child: Text('Buyer'),
                  onPressed: () {
                    Navigator.push(
                      context as BuildContext,
                      MaterialPageRoute(builder: (BuildContext) => MyCategory()),);},),),
            ],),),),
    );
  }
}


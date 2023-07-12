//import 'ProfileCardI.dart';
import 'package:flutter/material.dart';

import 'SecondScreen.dart';
import 'MyRegister.dart';
import 'MyLogin.dart';
import 'Products.dart';
import 'Services.dart';

class MyCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Hub'),
        actions: [

          PopupMenuButton(
            // add icon, by default "3 dot" icon
            // icon: Icon(Icons.book)
              itemBuilder: (context){
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text("Log In"),
                  ),

                  PopupMenuItem<int>(
                    value: 1,
                    child: Text("Register"),
                  ),

                ];
              },
              onSelected:(value){
                if(value == 0){
                  print("My account menu is selected.");
                }else if(value == 1){
                  print("Settings menu is selected.");
                }else if(value == 2){
                  print("Logout menu is selected.");
                }}),

        ],
      ),
      body: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Container(
                child: Text("Select Category",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                  ),),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    child: ElevatedButton(
                      child: Text('Products',),
                      onPressed: () {
                        Navigator.push(
                          context as BuildContext,
                          MaterialPageRoute(builder: (BuildContext) => Products()),);},),),

                  SizedBox(width: 50),
                  Container(
                    child: ElevatedButton(
                      child: Text('Services'),
                      onPressed: () {
                        Navigator.push(
                          context as BuildContext,
                          MaterialPageRoute(builder: (BuildContext) => Services()),);},),),
                ],

              ),

            ],),),
    );
  }
}


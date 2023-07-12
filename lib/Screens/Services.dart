//import 'ProfileCardI.dart';
//import 'ProfileCardII.dart';
import 'ProfileCardII.dart';
import 'Profiles.dart';
import 'Products.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Services extends StatelessWidget {

  // Item of the ListView
  Widget _listItem(index) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ElevatedButton(
            child: Text('Mehndi',
              style: TextStyle(
                decoration: TextDecoration.underline,
                backgroundColor: Colors.transparent,
              ),),
            onPressed: () {
              //Navigator.push(
              //context as BuildContext,
              //MaterialPageRoute(builder: (BuildContext) => ()),);
            },),

        ],
      ),

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Hub'),
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
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 105, vertical: 10),
              // margin: const EdgeInsets.all(90),
              color: Colors.lightBlueAccent,
              child: Row(
                children: [

                  TextButton(
                    child: Text('Products',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        //backgroundColor: Colors.transparent,
                        //background: Color.fromRGBO(ffff, g, b, opacity)
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context as BuildContext,
                        MaterialPageRoute(builder: (BuildContext) => Products()),);
                    },
                  ),

                  TextButton(
                    child: Text('Services',
                      style: TextStyle(
                        decoration: TextDecoration.underline, color: Colors.white, fontSize: 20,
                      ),),
                    onPressed: (){
                      Navigator.push(
                        context as BuildContext,
                        MaterialPageRoute(builder: (BuildContext) => Services()),);
                    },

                  ),
                ],),),
            SizedBox(height: 10),
            Text('Service',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),),
            SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                child: Text('Mehndi',),
                onPressed: () {Navigator.push(context as BuildContext, MaterialPageRoute(builder: (BuildContext) => ProfileCardII()),);},),),
            //SizedBox(height: 50),

          ],
        ),
      ),
    );
  }
}
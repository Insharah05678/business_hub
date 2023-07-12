import 'ProfileCardI.dart';
import 'ProfileCardII.dart';
import 'Services.dart';
import 'Products.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ProfilesI extends StatelessWidget {


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
            Text('Services',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),),

            //SizedBox(height: 50),
            SizedBox(height: 10),
            Image.asset(
              'assets/images/mehndi.png',
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Center(
                    child: Text('Business Type: Services\nBusines Profile Name:Henna With Falak \nPrice: 300 with service charges',
                      style: TextStyle(fontSize: 13, letterSpacing: 2, color: Colors.white),),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon( // <-- Icon
                      Icons.thumb_up,
                      size: 10,
                    ),
                    label: Text('5 Likes'), // <-- Text
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'MyCategory.dart';
import 'package:flutter/material.dart';
//import 'package:image_card/image_card.dart';

import 'MyLogin.dart';
import 'Profiles.dart';
import 'ProfilesI.dart';


class ProfileCardII extends StatelessWidget {

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
                }}),

        ],
      ),
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Text('Service > Mehndi',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),),
            SizedBox(height: 20),
            Container(
              child: Text('Henna With Falak',
                style: TextStyle(
                  fontSize: 20,
                ),),
            ),
            Image.asset(
              'assets/images/mehndi.png',
              height: 100,
              width: 100,
            ),

            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  //textColor: const Color(0xFF6200EE),
                  onPressed: () {
                    Navigator.push(
                      context as BuildContext,
                      MaterialPageRoute(builder: (BuildContext) => ProfilesI()),);
                    //
                    // Perform some action
                  },
                  child: Text('Show Profile'),
                ),
              ],
            ),

          ],
        ),
      ),


    );
  }}
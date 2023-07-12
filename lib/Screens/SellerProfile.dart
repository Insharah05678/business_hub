import 'package:untitled6/Screens/MyLogin.dart';

import 'ProfileCardI.dart';
import 'ProfileCardII.dart';
import 'Services.dart';
import 'Products.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SellerProfile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Hub'),
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
                  Text('Scraf By Ayesha',style: TextStyle(fontSize: 20,),)

                ],),),
            SizedBox(height: 10),

            Image.asset(
              'assets/images/scraf.jpg',
              height: 100,
              width: 100,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Update Picture'), // <-- Text
            ),
            SizedBox(height: 5),
            ElevatedButton(child: Text('Log Out'), onPressed:(){Navigator.push(
              context as BuildContext,
              MaterialPageRoute(builder: (BuildContext) => MyLogin()),);}),
            SizedBox(height: 10),
            Container(
              color: Colors.lightBlue,
              child: Column(
                children: [
                  Center(
                    child: Text('Business Type: Products\nBusines Profile Name: Scraf By Ayesha\nPrice: each scraf 500 with delivery charges',
                      style: TextStyle(fontSize: 13, letterSpacing: 2, color: Colors.white),),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon( // <-- Icon
                      Icons.thumb_up,
                      size: 10,
                    ),
                    label: Text('4 Likes'), // <-- Text
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Update Profile'), // <-- Text
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
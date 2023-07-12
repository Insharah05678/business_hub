import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'MyLogin.dart';

class MyRegister extends StatelessWidget {
  //const MyRegister({super.key});

  String dropdownvalue = 'Choose One';

// List of items in our dropdown menu
  var items = [
    'Choose One',
    'Buyer',
    'Seller',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Hub'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          /*Image.asset(
            'assets/images/Logoutt.png',
            height: 100,
            width: 100,
          ),*/
          Container(
            child: Text('Register',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
              ),),
          ),
          SizedBox(height: 50),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              contentPadding: EdgeInsets.only(top: 14), hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black38,
              ),
            ),),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                contentPadding: EdgeInsets.only(top: 14), hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),),
          SizedBox(height: 10),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(
                color: Colors.black87
            ),
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                contentPadding: EdgeInsets.only(top: 14), hintText: 'Confirmed Password',
                hintStyle: TextStyle(
                    color: Colors.black38
                )
            ),),
          SizedBox(height: 10),
          DropdownButton(
            // Initial Value
            value: dropdownvalue,
            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              var state = setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),

          SizedBox(height: 20),
          //ElevatedButton(child: Text('Register'), onPressed:(){}),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Register"),
                  content: const Text("Info Save"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.lightBlue,
                        padding: const EdgeInsets.all(14),
                        child: const Text("OK", style: TextStyle(color: Colors.white,),),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: const Text("Register"),
          ),

          SizedBox(height: 10),

          Center(child:Text('Do have account',
            textAlign: TextAlign.center,
            style: TextStyle(
            ),),),

          TextButton(child: Text('Log In', textAlign: TextAlign.center,), onPressed: (){
            Navigator.push(
              context as BuildContext,
              MaterialPageRoute(builder: (BuildContext) => MyLogin()),);},),
        ],
      ),
    );
  }

  setState(Null Function() param0) {}}
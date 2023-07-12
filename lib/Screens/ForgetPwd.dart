import 'package:flutter/material.dart';
import 'package:untitled6/Screens/MyLogin.dart';
import 'SecondScreen.dart';
import 'MyRegister.dart';

class ForgetPwd extends StatelessWidget {
  //const MyLogin({super.key});

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
            'assets/images/Logo.png',
            height: 100,
            width: 100,
          ),*/
          Container(
            child: Text('Forget Password',
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

          Container(
            child: Row(
              children: [
                TextButton(child: Text('Forget Password', textAlign: TextAlign.center,), onPressed: (){
                  Navigator.push(
                    context as BuildContext,
                    MaterialPageRoute(builder: (BuildContext) => MyLogin()),);
                },),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

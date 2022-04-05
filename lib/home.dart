import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kitchen_master/screens/admin/admin_login.dart';
import 'package:kitchen_master/screens/user/user_login.dart';
import 'package:kitchen_master/widget/button.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome1(),
    );
  }
}

class MyHome1 extends StatelessWidget {
  const MyHome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Admin_Log()));
                },
                // style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                height: 40,
                text: 'Admin',
                width: 100,
              ),
              button(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => User_Log()));
                },
                // style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                height: 40,
                text: 'User',
                width: 100,
                // child: Text("User"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

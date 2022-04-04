import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kitchen_master/screens/admin/admin_login.dart';
import 'package:kitchen_master/screens/user/user_login.dart';


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
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Admin_Log()));
                  },
                  style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                  child: Text("Admin")),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => User_Log()));
                },
                style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
                child: Text("User"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

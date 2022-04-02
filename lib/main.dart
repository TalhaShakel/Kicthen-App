import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kitchen_master/screens/user/user_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcome(),
    );
  }
}

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

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
                    //  Navigator.push(context, MaterialPageRoute(builder: (context)=>admin))
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

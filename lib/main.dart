import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kitchen_master/home.dart';
import 'package:kitchen_master/screens/admin/admin_login.dart';
import 'package:kitchen_master/screens/splash.dart';
import 'package:kitchen_master/screens/user/user_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}



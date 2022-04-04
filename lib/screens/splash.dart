import 'dart:async';


import 'package:flutter/material.dart';
import 'package:kitchen_master/home.dart';


class SplashScreen extends StatefulWidget {

  SplashScreen();
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MyHome()
         
              ));
    
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38),
                    child: Image.asset("assets/bgimg.png"),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30, top: 130),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Copyright © 2021",
                        style: TextStyle(
                          fontFamily: "Crimson",
                          color: Color(0xff4B4B4B),
                          fontWeight: FontWeight.w500,
                          // fontSize: 13,
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                     
                        },
                        child: Text(
                          " Nadia Kitchen ",
                          style: TextStyle(
                            fontFamily: "Crimson",
                            color: Color(0xff4B4B4B),
                            fontWeight: FontWeight.w500,
                            // fontSize: 13,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
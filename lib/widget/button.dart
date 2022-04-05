import 'package:flutter/material.dart';
import 'package:kitchen_master/widget/constants.dart';

class button extends StatelessWidget {
  String text;

  var width;

  var height;

  var onPressed;

  button({
    Key? key,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          color: kPrimaryColor,
          // ignore: prefer_const_constructors
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          onPressed: onPressed,
          child: Text(
            text,
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

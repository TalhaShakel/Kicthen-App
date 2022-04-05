import 'package:flutter/material.dart';

class textfeild extends StatelessWidget {
  var label;
  final String? Function(String?)? validator;
  final String hinttext;
  final IconData icon;
  final ValueChanged<String> onchanged;

  textfeild({
    Key? key,
    required this.validator,
    required this.label,
    required this.controler,
    required this.hinttext,
    required this.icon,
    required this.onchanged,
  }) : super(key: key);

  final TextEditingController controler;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextFormField(
        onChanged: onchanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.red.shade700,
          ),
          border: InputBorder.none,
          hintText: hinttext,
        ),
        controller: controler,
        validator: validator,
      ),
    );
  }
}

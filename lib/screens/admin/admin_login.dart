import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kitchen_master/screens/admin/admin_home.dart';
import 'package:kitchen_master/screens/admin/admin_sign.dart';
import 'package:kitchen_master/screens/user/user_home.dart';
import 'package:kitchen_master/screens/user/user_sign.dart';

import '../../widget/button.dart';
import '../../widget/textfield.dart';

class Admin_Log extends StatelessWidget {
  const Admin_Log({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    TextEditingController email = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOGIN",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size.height * 0.1 / 2),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Admin",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade900),
              ),
              textfeild(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter a valid eamil';
                    } else if (!value.contains("@")) {
                      return 'enter a valid eamil';
                    }
                    return null;
                  },
                  hinttext: 'abc@gmail.com',
                  icon: Icons.mail,
                  onchanged: (String value) {},
                  label: "Email",
                  controler: email),
              textfeild(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Password";
                    } else if (value.length < 6) {
                      return "Password must be atleast 6 characters long";
                    } else {
                      return null;
                    }
                  },
                  hinttext: '123456',
                  icon: Icons.password,
                  onchanged: (String value) {},
                  label: "Password",
                  controler: password),
              button(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: email.text, password: password.text)
                          .whenComplete(() => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Admin_Home()))
                              .whenComplete(() => print("Admin is login")));
                    }
                  },
                  height: 40.0,
                  width: 150.0,
                  text: "Login"),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Admin_Sign()));
                  },
                  child: Text("create new acoount"))
            ],
          ),
        ),
      ),
    );
  }
}

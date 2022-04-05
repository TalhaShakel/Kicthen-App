import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kitchen_master/screens/admin/admin_login.dart';
import 'package:kitchen_master/screens/user/user_login.dart';

import '../../widget/button.dart';
import '../../widget/textfield.dart';

class Admin_Sign extends StatelessWidget {
  const Admin_Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController name = TextEditingController();
    Size size = MediaQuery.of(context).size;

    final _formKey = GlobalKey<FormState>();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size.height * 0.1 / 2),
        child: Form(
          key: _formKey,
          child: Column(
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
                    return 'enter a valid Name';
                  }
                  return null;
                },
                label: "Name",
                controler: name,
                hinttext: 'Your Name',
                icon: Icons.person,
                onchanged: (String value) {},
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
                label: "Email",
                controler: email,
                hinttext: 'abc@gmail.com',
                icon: Icons.mail,
                onchanged: (String value) {},
              ),
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
                label: "Password",
                controler: password,
                hinttext: '123456',
                icon: Icons.password,
                onchanged: (String value) {},
              ),
              button(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      FirebaseAuth auth = await FirebaseAuth.instance;
                      await auth
                          .createUserWithEmailAndPassword(
                              email: email.text, password: password.text)
                          .whenComplete(() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Admin_Log())))
                          .whenComplete(() => print("admin is register"));
                    }
                  },
                  height: 40.0,
                  width: 150.0,
                  text: "Register")
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kitchen_master/screens/user/user_login.dart';

import '../../widget/button.dart';
import '../../widget/textfield.dart';

class User_Sign extends StatelessWidget {
  const User_Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController name = TextEditingController();

    final _formKey = GlobalKey<FormState>();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Job Applicant"),
            textfeild(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'enter a valid eamil';
                  } else if (!value.contains("@")) {
                    return 'enter a valid eamil';
                  }
                  return null;
                },
                label: "Name",
                controler: name),
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
                label: "Password",
                controler: password),
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
                                builder: (context) => User_Log())));
                  }
                },
                height: 40.0,
                width: 150.0,
                text: "Register")
          ],
        ),
      ),
    );
  }
}

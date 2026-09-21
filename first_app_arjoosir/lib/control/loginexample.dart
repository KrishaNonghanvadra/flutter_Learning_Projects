import 'package:first_app_arjoosir/stopwatch/stop_watch.dart';
import 'package:flutter/material.dart';
// import 'package:stopwatch_first/stopwatch/stop_watch.dart';

class LoginScreenPart extends StatefulWidget {
  const LoginScreenPart({super.key});

  @override
  State<LoginScreenPart> createState() => _LoginScreenPartState();
}

class _LoginScreenPartState extends State<LoginScreenPart> {
  String name = "", email = "", password = "", confirmPassword = "";
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _loginScreen());
  }

  Widget _loginScreen() {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // USERNAME_________________________
            TextFormField(
              controller: t1,
              decoration: const InputDecoration(
                labelText: "User Name",
                border: OutlineInputBorder(),
              ),
              validator: (xyz) =>
                  xyz!.isEmpty ? "Please enter your name" : null,
            ),
            const SizedBox(height: 15),
            // EMAIL_____________________________
            TextFormField(
              controller: t2,
              decoration: const InputDecoration(
                labelText: "Email Address",
                border: OutlineInputBorder(),
              ),
              validator: (xyz) {
                if (xyz!.isEmpty) {
                  return "Email cannot be blank";
                }
                final regex = RegExp(
                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                );
                if (!regex.hasMatch(xyz)) {
                  return "Email address is not in valid format";
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            // PASSWORD_____________________________
            TextFormField(
              controller: t3,
              decoration: const InputDecoration(
                labelText: "PassWord",
                border: OutlineInputBorder(),
              ),
              validator: (xyz) {
                if (xyz!.isEmpty) {
                  return "Password cannot be blank";
                }
                final regax = RegExp(
                  r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
                );
                if (!regax.hasMatch(xyz)) {
                  return "Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character";
                }
                return null;
              }
            ),
            const SizedBox(height: 15),
            // CONFIRM PASSWORD_____________________________
            TextFormField(
              controller: t4,
              decoration: const InputDecoration(
                labelText: "Confirm PassWord",
                border: OutlineInputBorder(),
              ),
              validator: (xyz) {
                if (xyz!.isEmpty) {
                  return "Please enter your Confirm Password";
                }
                if (xyz != t3.text) {
                  return "Passwords do not match";
                }
                return null;
              },
            ),
            const SizedBox(height: 15),
            ElevatedButton(onPressed: _validate, child: const Text("Login")),
          ],
        ),
      ),
    );
  }

  void _validate() {
    var form = _formkey.currentState;
    if (form?.validate() == true) {
      name = t1.text;
      email = t2.text;
      password = t3.text;
      confirmPassword = t4.text;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const MystopWatch(),
        ),
      );
      print("Form is valid");
    } else {
      print("Form is not valid");
    }
  }
}

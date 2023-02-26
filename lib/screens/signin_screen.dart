import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:koibanda/screens/home_screen.dart';
import 'package:koibanda/screens/signup_screen,dart.dart';
import '../utils/color_utils.dart';

import '../reusable_widgets/resusable_widget.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/logo1.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ), // Sized Box
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordController),
                const SizedBox(
                  height: 5,
                ),
                forgetPassword(context),
                signInSignUpButton(context, true, (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordController.text).then((value) {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error${error.toString()}");
                  });
                }),
                signUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Row signUpOption() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text ("Don't have account?",
        style: TextStyle(color: Colors.white70)), // Text
    GestureDetector(
    onTap: () {
    Navigator.push(context,
    MaterialPageRoute (builder: (context) => SignUpScreen()));
    },
    child: const Text(
    "Sign Up",
    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    )
    ],
    );
  }
  Widget forgetPassword (BuildContext context) {
    return Container(
      width: MediaQuery.of (context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
          child: const Text(
            "Forgot Password?",
            style: TextStyle(color: Colors.white70),
            textAlign: TextAlign.right,
          ), // Text
          onPressed: () {},
      ),
    );
  }
}


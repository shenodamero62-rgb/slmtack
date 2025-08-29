import 'package:flutter/material.dart';
import 'package:slmtack/home.dart';
import 'package:slmtack/screen/onboard.dart';
import 'package:slmtack/screen/onboard2.dart';
import 'package:slmtack/sign_in.dart';
import 'package:slmtack/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboard(),
      routes: {
        "Onboard2": (context) => Onboard2(),
        "signin": (context) => SignIn(),
        "signup": (context) => SignUp(),
        "home": (context) => Home(),
        // "Signuppasswordscreen": (context) => Signuppasswordscreen(),
        // "ResetPasswordEmailScreen": (context) => ResetPasswordEmailScreen(),
        // "ResetPasswordNewScreen": (context) => ResetPasswordNewScreen(),
        // "ResetPasswordOtpScreen": (context) => ResetPasswordOtpScreen(),
      },
    );
  }
}

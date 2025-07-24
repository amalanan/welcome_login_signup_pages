import 'package:flutter/material.dart';
import 'package:welcome_login_signup_pages/constants.dart';
import 'package:welcome_login_signup_pages/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white

      ),
      home: WelcomeScreen(),
    );
  }
}

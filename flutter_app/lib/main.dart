import 'package:flutter/material.dart';
import 'package:flutter_app/login/ui/screens/welcome_screen.dart';
import 'package:flutter_app/shared/constants.dart';
// import 'package:flutter_app/login/welcome_screen.dart';
// import 'package:flutter_app/shared/constants.dart';

void main() {
  runApp(StudyApp());
}

class StudyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}

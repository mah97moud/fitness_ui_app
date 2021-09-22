import 'package:fitness_ui_app/modules/inboarding/onboarding_screen.dart';
import 'package:fitness_ui_app/shared/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: kWhiteColor,
      ),
      home: OnBoardingScreen(),
    );
  }
}

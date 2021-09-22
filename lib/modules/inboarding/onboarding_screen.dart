import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/onboarding1.png',
              height: MediaQuery.of(context).size.height * 0.55,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

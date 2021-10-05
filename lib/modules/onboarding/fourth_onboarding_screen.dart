import 'package:fitness_ui_app/shared/widgets.dart';
import 'package:flutter/material.dart';

class FouthBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardScreen(
      assetPath: 'assets/images/onboard4.png',
      title: 'Improve Sleep  Quality',
      description:
          'Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning',
      currentValue: 100.0,
      onTap: () {},
    );
  }
}

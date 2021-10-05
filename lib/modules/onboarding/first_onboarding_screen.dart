import 'package:fitness_ui_app/modules/onboarding/second_onboarding_screen.dart';
import 'package:fitness_ui_app/shared/widgets.dart';
import 'package:flutter/material.dart';

class FirstBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardScreen(
      assetPath: 'assets/images/onboarding1.png',
      title: 'Track Your Goal',
      description:
          'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
      currentValue: 25.0,
      onTap: () {
        navigateTo(
          context: context,
          routeTo: SecondBoardingScreen(),
        );
      },
    );
  }
}

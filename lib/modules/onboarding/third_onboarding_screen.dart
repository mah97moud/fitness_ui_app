import 'package:fitness_ui_app/shared/widgets.dart';
import 'package:flutter/material.dart';

import 'fourth_onboarding_screen.dart';

class ThirdBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardScreen(
      assetPath: 'assets/images/onboard3.png',
      title: 'Eat Well',
      description:
          'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun',
      currentValue: 75.0,
      onTap: () {
        navigateTo(
          context: context,
          routeTo: FouthBoardingScreen(),
        );
      },
    );
  }
}

import 'package:fitness_ui_app/modules/onboarding/third_onboarding_screen.dart';
import 'package:fitness_ui_app/shared/widgets.dart';
import 'package:flutter/material.dart';

class SecondBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OnBoardScreen(
      assetPath: 'assets/images/onboard2.png',
      title: 'Get Burn',
      description:
          'Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever',
      currentValue: 50.0,
      onTap: () {
        navigateTo(context: context, routeTo: ThirdBoardingScreen());
      },
    );
  }
}

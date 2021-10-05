import 'package:fitness_ui_app/shared/constants.dart';
import 'package:fitness_ui_app/shared/size_confige.dart';
import 'package:fitness_ui_app/shared/widgets.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'first_onboarding_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedConf().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fitnest',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kDarkColor,
                    fontSize: 40.0,
                  ),
                ),
                GradientText(
                  'X',
                  style: TextStyle(
                    fontSize: 55.0,
                    fontWeight: FontWeight.bold,
                    height: 0.8,
                  ),
                  colors: [
                    kMain2BrandColor,
                    kMain1BrandColor,
                  ],
                ),
              ],
            ),
            Text(
              'Everybody Can Train',
              style: k20TextStyle.copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
            Spacer(),
            DefaultBtn(
              text: 'Get Started',
              onPressed: () {
                navigateTo(
                  context: context,
                  routeTo: FirstBoardingScreen(),
                );
              },
            ),
            SizedBox(
              height: getProportionateScreenWidth(50),
            ),
          ],
        ),
      ),
    );
  }
}

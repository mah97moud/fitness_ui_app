import 'package:fitness_ui_app/shared/size_confige.dart';
import 'package:fitness_ui_app/shared/widgets.dart';
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
              height: SizedConf.screenHeight * 0.55,
              width: SizedConf.screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizedConf.screenHeight * 0.62,
                ),
                Text(
                  'Track Your Goal',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(24.0),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14.0),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: () {},
                // child: Icon(FitIcon),
                child: CustomIcon(
                  iconAsset: 'assets/Iconly/Light/Arrow - Right 2.svg',
                  color: Colors.white,
                  size: getProportionateScreenWidth(18.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

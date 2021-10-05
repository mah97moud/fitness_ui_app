import 'package:fitness_ui_app/modules/onboarding/circle_progress.dart';
import 'package:fitness_ui_app/shared/constants.dart';
import 'package:fitness_ui_app/shared/size_confige.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DefaultBtn extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;

  const DefaultBtn({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(18.0),
        ),
        decoration: BoxDecoration(
          gradient: kBrandColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16.0),
            fontWeight: FontWeight.bold,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}

void navigateTo({
  required BuildContext context,
  required Widget routeTo,
}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => routeTo,
    ),
  );
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.iconAsset,
    required this.color,
    required this.size,
  }) : super(key: key);

  final String iconAsset;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconAsset,
      height: size,
      color: color,
    );
  }
}

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({
    Key? key,
    required this.assetPath,
    required this.title,
    required this.description,
    required this.currentValue,
    required this.onTap,
  }) : super(key: key);

  final String assetPath;
  final String title;
  final String description;
  final double currentValue;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              assetPath,
              height: SizedConf.screenHeight * 0.65,
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
                  height: SizedConf.screenHeight * 0.7,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(24.0),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  description,
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
              child: CustomPaint(
                foregroundPainter: CircleProgress(
                  currentValue: currentValue,
                  strokeWidth: 5.0,
                  circleRadius: 40.0,
                ),
                child: FloatingActionButton(
                  onPressed: onTap,
                  child: Container(
                    height: getProportionateScreenWidth(60.0),
                    width: getProportionateScreenWidth(60.0),
                    padding: const EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          kMain2BrandColor,
                          kMain1BrandColor,
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CustomIcon(
                      iconAsset: 'assets/Iconly/Light/Arrow - Right 2.svg',
                      color: Colors.white,
                      size: getProportionateScreenWidth(18.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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

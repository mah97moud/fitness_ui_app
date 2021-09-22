import 'package:fitness_ui_app/shared/constants.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.symmetric(vertical: 18.0),
        decoration: BoxDecoration(
          gradient: kBrandColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}

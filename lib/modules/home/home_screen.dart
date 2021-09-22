import 'package:fitness_ui_app/shared/constants.dart';
import 'package:fitness_ui_app/shared/fitness_icons_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200.0,
          width: 200.0,
          child: Container(
            decoration: BoxDecoration(
              color: kGrayColor,
            ),
            child: Center(
              child: Icon(
                FitnessIcons.iconly_bold_unlock,
                size: 50.0,
                color: kMain1BrandColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

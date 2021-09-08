import 'package:fitness_ui_app/shared/constants.dart';
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
              gradient: kSecondaryColor,
            ),
            child: Center(
              child: Text(
                'Hello',
                style: k26TextStyle.copyWith(
                  color: kWhiteColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:fitness_ui_app/shared/constants.dart';
import 'package:flutter/material.dart';

class CircleProgress extends CustomPainter {
  final double strokeWidth;
  final double currentValue;
  final double circleRadius;

  CircleProgress({
    required this.strokeWidth,
    required this.currentValue,
    required this.circleRadius,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint circle = Paint()
      ..strokeWidth = strokeWidth
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = circleRadius;
    canvas.drawCircle(center, radius, circle);

    Paint animationArc = Paint()
      ..strokeWidth = strokeWidth
      ..shader = RadialGradient(
        colors: [
          kMain2BrandColor,
          kMain1BrandColor,
        ],
      ).createShader(Rect.fromCircle(
        center: center,
        radius: 1,
      ))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double angle = 2 * pi * (currentValue / 100);
    // first quarter 1.5 * pi
    // second quarter 2 * pi
    // third quarter 2.5 * pi
    // forth quarter 3 * pi
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), 1.5 * pi,
        angle, false, animationArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

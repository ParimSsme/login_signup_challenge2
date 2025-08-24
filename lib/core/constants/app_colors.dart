import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFD0464D);
  static const Color secondary = Color(0xFF222B5C);
  static const Color background = Colors.white;
  static const Color titleTextColor = Colors.white;
  static const Color bodyTextColor = Colors.white70;
  static const Color inputFilledColor = Color(0xFF294080);
  static const Color iconColor = Colors.white;

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.4, 1],
    colors: [
      secondary,
      primary,
    ],
    transform: GradientRotation(56),
  );

  static const authFormGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [0.65, 1],
    colors: [
      secondary,
      primary,
    ],
  );
}

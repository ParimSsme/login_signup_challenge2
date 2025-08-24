import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  static const TextStyle title = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    color: AppColors.titleTextColor,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 17,
    color: AppColors.bodyTextColor,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 15,
    color: AppColors.bodyTextColor,
    fontWeight: FontWeight.w400,
  );
}

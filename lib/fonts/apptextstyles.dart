import 'package:flutter/material.dart';

import '../appcolors.dart';
class AppTextStyles {
  AppTextStyles._();

  static const TextStyle heading =
  TextStyle(
    fontFamily: "extrabold",
    fontSize: 36,
    height: 1,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static const TextStyle semiheading =
  TextStyle(
    fontFamily: "extrabold",
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle title =
  TextStyle(
    fontFamily: "semibold",
    fontSize: 16,
    color: AppColors.textPrimary,
  );
  static const TextStyle price =
  TextStyle(
    fontFamily: "regular",
    fontSize: 12,
    color: AppColors.textPrimary,
  );

}
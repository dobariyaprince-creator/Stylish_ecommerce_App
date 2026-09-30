import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color blue = Color(0xFF4392F9);
  static const Color lightGrey = Color(0xFFC8C8C8);
  static const Color grey = Color(0xFF6D6565);
  static const Color primary = Color(0xFFF83758);
  static const Color pinkLight = Color(0xFFFD6E87);
  static const Color secondary = Color(0xFFF83758);
  static const Color background = Color(0xFFFDFDFD);
  static const Color button = Color(0xFFF83758);
  static const Color textPrimary =Color(0xFF000000);
  static const Color textSecondary = Color(0xFFF83758);
  static const Color textTertiary = Color(0xFFFFFFFF);
  static const Color textQuaternary = Color(0xFF575757);
  static const Color error = Color(0xFFF83758);
  static const Color borderGrey = Color(0xFFC8C8C8);
  static const Color shadow = Color(0xFFBBBBBB);
  static const Color fill = Color(0xFFF3F3F3);
  static const Color glass = Color.fromARGB(40,255,255,255);

  static const LinearGradient primaryGradient = LinearGradient(
    begin: AlignmentGeometry.topCenter,
    end: AlignmentGeometry.bottomCenter,
    colors: [
      Color(0xFF3F92FF),
      Color(0xFF0B3689),
    ],
  );
  static const LinearGradient buyNowGradient = LinearGradient(
    begin: AlignmentGeometry.topCenter,
    end: AlignmentGeometry.bottomCenter,
    colors: [
      Color(0xFF66E39A),
      Color(0xFF20B967),
    ],
  );

}
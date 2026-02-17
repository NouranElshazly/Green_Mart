import 'package:flutter/material.dart';
// import 'package:greenmart/core/styles/colors.dart';

abstract class TextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700,
    // color: AppColors.primaryGreen,
  );
  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle subtitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle body = TextStyle(
    fontSize: 18,

    // fontWeight: FontWeight.w400,
  );
  static const TextStyle caption1 = TextStyle(fontSize: 14);
  static const TextStyle caption2 = TextStyle(fontSize: 12, color: Colors.grey);
}

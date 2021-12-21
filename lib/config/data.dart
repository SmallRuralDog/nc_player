import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MData {
  static ThemeData themeData(BuildContext context) {
    return Theme.of(context);
  }

  static ColorScheme colorScheme(BuildContext context) {
    return Theme.of(context).colorScheme;
  }

  static double px1 = 1 / Get.pixelRatio;

  static Size appBarHeight = const Size.fromHeight(kToolbarHeight);
}

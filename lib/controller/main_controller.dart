import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  //主题
  var schemeIndex = 0.obs;
  var scheme = FlexScheme.ebonyClay.obs;
  var themeMode = ThemeMode.system.obs;
  var isDarkAppbar = false.obs;

  onThemeChange(int index) {
    schemeIndex.value = index;
    scheme.value = FlexScheme.values[index];
  }

  onThemeModeChanged(ThemeMode value) {
    themeMode.value = value;
  }
}

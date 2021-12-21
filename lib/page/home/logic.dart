import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeLogic extends GetxController {

  late PageController pageController;


  var currentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentIndex.value);


  }

  onTap(int index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }
}

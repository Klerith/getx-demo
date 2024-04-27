import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_app/config/config.dart';

class ThemeController extends GetxController {
  ThemeController({
    bool currentTheme = false,
  }) : isDarkMode = currentTheme.obs;

  final RxBool isDarkMode;

  void changeTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(isDarkMode.value ? ThemeData.dark() : ThemeData.light());
    LocalStorageAdapter.save('isDarkMode', isDarkMode.value);
  }
}

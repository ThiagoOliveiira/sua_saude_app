// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ThemeOfApp {
//   final _box = GetStorage();
//   final _key = 'isDarkMode';
//   ThemeMode get theme => loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

//   bool loadThemeFromBox() => _box.read(_key) ?? false;

//   saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

//   void switchTheme() {
//     Get.changeThemeMode(loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
//     saveThemeToBox(!loadThemeFromBox());
//   }
// }

import 'package:flutter/material.dart';

class ChangeThemeProvider extends ChangeNotifier {
  bool isLight = false;
  bool darkMode = false;
  void themeChange(bool value) {
    isLight = value;
    notifyListeners();
  }
  void changeName(bool value) {
    darkMode = value;
    notifyListeners();
  }
}
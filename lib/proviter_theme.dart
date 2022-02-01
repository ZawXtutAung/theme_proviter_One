import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class ThemeNotifier with ChangeNotifier {
//   ThemeData _themeData;

//   ThemeNotifier(this._themeData);

//   getTheme() => _themeData;

//   setTheme(ThemeData themeData) async {
//     _themeData = themeData;
//     notifyListeners();
//   }
// }

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  get themeMode => _themeMode;
  toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

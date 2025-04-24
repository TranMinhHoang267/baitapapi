import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  Color _primaryColor = Colors.blue;
  Color _backgroundColor = Colors.white;

  Color get primaryColor => _primaryColor;
  Color get backgroundColor => _backgroundColor;

  void setTheme(Color color) {
    _primaryColor = color;
    _backgroundColor = color;
    notifyListeners();
  }
}

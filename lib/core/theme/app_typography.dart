import 'package:flutter/material.dart';

class AppTypography {
  static TextTheme get textTheme {
    return TextTheme(
      bodyText1: TextStyle(fontSize: 14.0, color: Colors.white),
      bodyText2: TextStyle(fontSize: 16.0, color: Colors.white),
      headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
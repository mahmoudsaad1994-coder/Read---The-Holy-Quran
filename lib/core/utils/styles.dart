import 'package:flutter/material.dart';

class Styles {
  static TextStyle appBarTitleTextStyle(
    double width,
    Color color,
  ) {
    return TextStyle(
        fontWeight: FontWeight.bold, color: color, fontSize: width * .06);
  }
}

import 'package:flutter/material.dart';

import '../../constans.dart';

class Styles {
  static TextStyle appBarTitleTextStyle(
    double width,
    Color color,
  ) {
    return TextStyle(
        fontWeight: FontWeight.bold, color: color, fontSize: width * .06);
  }

  static TextStyle medText(cubit, width) => TextStyle(
        color: cubit.isdark ? Colors.white : k672CBC,
        fontWeight: FontWeight.bold,
        fontSize: width * .038,
      );
}

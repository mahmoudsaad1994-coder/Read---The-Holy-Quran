import 'package:flutter/material.dart';

import '../../constans.dart';
import 'styles.dart';

ThemeData lightThemeData(context) {
  var width = MediaQuery.of(context).size.width;
  return ThemeData(
    scaffoldBackgroundColor: kDAD8E8,
    appBarTheme: AppBarTheme(
      backgroundColor: kDAD8E8,
      surfaceTintColor: kDAD8E8,
      scrolledUnderElevation: 5,
      elevation: 1,
      titleTextStyle: Styles.appBarTitleTextStyle(width, k672CBC),
    ),
  );
}

ThemeData darkThemeData(context) {
  var width = MediaQuery.of(context).size.width;
  return ThemeData(
    scaffoldBackgroundColor: k1D2233,
    appBarTheme: AppBarTheme(
      backgroundColor: k1D2233,
      surfaceTintColor: k1D2233,
      scrolledUnderElevation: 5,
      elevation: 1,
      shadowColor: k1D2233,
      titleTextStyle: Styles.appBarTitleTextStyle(width, Colors.white),
    ),
  );
}

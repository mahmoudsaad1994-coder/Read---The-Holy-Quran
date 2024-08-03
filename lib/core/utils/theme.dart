import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../constans.dart';
import 'responsive.dart';
import 'styles.dart';

ThemeData lightThemeData(context) {
  var width = MediaQuery.of(context).size.width;
  return ThemeData(
      //useMaterial3: true,
      scaffoldBackgroundColor: kDAD8E8,
      appBarTheme: AppBarTheme(
        backgroundColor: kDAD8E8,
        surfaceTintColor: kDAD8E8,
        titleTextStyle: Styles.appBarTitleTextStyle(width, k672CBC),
      ),
      // primaryColor: Colors.black,
      bannerTheme: const MaterialBannerThemeData(
        backgroundColor: Colors.redAccent,
      ),
      primaryColor: k672CBC,
      primaryColorLight: k672CBC,
      //elevated button style
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStateProperty.all(Colors.white),
          backgroundColor: WidgetStateProperty.all(k672CBC),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          //new
          height: 1.5,
          fontSize: width * .03,
          fontWeight: FontWeight.bold,
          // color: Colors.redAccent,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          height: 1.2,
          fontWeight: FontWeight.w700,
          color: k672CBC,
        ),
        headlineSmall: TextStyle(
          //category
          fontSize: Responsive.isMobile(context) ? width * .02 : width * .017,
          height: 1.2,
          fontWeight: FontWeight.w800,
          color: k672CBC,
        ),
        bodySmall: TextStyle(
          //new
          fontSize: width * .02,
          height: 1.3,
          fontWeight: FontWeight.w700,
          color: k672CBC,
        ),
        displayMedium: const TextStyle(
          fontSize: 18,
          height: 1.5,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        displaySmall: const TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: k672CBC,
        selectedIconTheme: IconThemeData(
          color: k672CBC,
          size: 30,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
          size: 22,
        ),
      ));
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
      // primaryColor: Colors.black,
      bannerTheme: const MaterialBannerThemeData(
        backgroundColor: Colors.white,
      ),
      primaryColor: k672CBC,

      //elevated button style
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          //iconSize:  MaterialStateProperty.all(20),
          iconColor: WidgetStateProperty.all(k672CBC),
          backgroundColor: WidgetStateProperty.all(HexColor("DDE6ED")),
        ),
      ),
      cardTheme: CardTheme(
        color: HexColor("526D82"),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          //new
          height: 1.5,
          fontSize: width * .03,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          // color: Colors.red.shade200,
        ),
        titleSmall: TextStyle(
          fontSize: 18,
          height: 1.2,
          fontWeight: FontWeight.w700,
          color: k672CBC,
        ),
        headlineSmall: TextStyle(
          //category
          fontSize: Responsive.isMobile(context) ? width * .02 : width * .017,
          height: 1.2,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          //new
          fontSize: width * .02,
          height: 1.3,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        displayMedium: TextStyle(
          fontSize: 18,
          height: 1.5,
          fontWeight: FontWeight.w700,
          color: k672CBC,
        ),
        displaySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: k672CBC,
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: HexColor("526D82"),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: HexColor("9DB2BF"),
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: k672CBC,
          selectedItemColor: Colors.white,
          unselectedItemColor: HexColor("9DB2BF"),
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
            size: 30,
          ),
          unselectedIconTheme: IconThemeData(
            color: HexColor("9DB2BF"),
            size: 22,
          )));
}

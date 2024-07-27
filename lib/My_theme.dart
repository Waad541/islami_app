import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColor.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(size: 30, color: Color(0xFF242424)),
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColor.colorBlack,
      ),
      shadowColor: Colors.transparent,
    ),
    dividerTheme: DividerThemeData(color: AppColor.primary, thickness: 3),
    iconTheme: IconThemeData(color: AppColor.primary, size: 25),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.colorBlack,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.primary,
      showUnselectedLabels: false,
      showSelectedLabels: true,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColor.colorBlack,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: AppColor.colorBlack,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: AppColor.colorBlack,
      ),
    ),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColor.primary,
        onPrimary: AppColor.primary,
        secondary: AppColor.primary,
        onSecondary: AppColor.primary,
        error: AppColor.primary,
        onError: AppColor.primary,
        surface: AppColor.primary,
        onSurface: AppColor.primary),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(size: 30, color: Colors.white),
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      shadowColor: Colors.transparent,
    ),
    dividerTheme: DividerThemeData(color: AppColor.primary, thickness: 3),
    iconTheme: IconThemeData(color: AppColor.yellowColor, size: 25),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.yellowColor,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColor.primaryDark,
      showUnselectedLabels: false,
      showSelectedLabels: true,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: AppColor.yellowColor,
      ),
    ),
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColor.primary,
        onPrimary: AppColor.primary,
        secondary: AppColor.primary,
        onSecondary: AppColor.primary,
        error: AppColor.primary,
        onError: AppColor.primary,
        surface: AppColor.primary,
        onSurface: AppColor.primary),
  );
}

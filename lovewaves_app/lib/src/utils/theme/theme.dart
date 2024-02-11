import 'package:flutter/material.dart';
import 'package:lovewaves_app/src/constants/colors.dart';
import 'package:lovewaves_app/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: appPrimaryColor,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: false,
      ),
    
   
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    appBarTheme: const AppBarTheme(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );

}

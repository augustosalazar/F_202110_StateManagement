import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blueGrey[900],
        accentColor: Colors.blueGrey,
        scaffoldBackgroundColor: Colors.grey.shade300,
        fontFamily: 'Montserrat',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.yellow,
            primary: Colors.blueGrey[900],
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.yellow,
            primary: Colors.blueGrey[900],
          ),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
              fontSize: 18.0, fontFamily: 'Hind', color: Colors.white),
        ));
  }
}

import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,

      //Appbar Theme
      appBarTheme: const AppBarTheme(color: Colors.indigo, elevation: 0),

      //TextButtonTheme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      //FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),

      //ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.primary,
              shape: const StadiumBorder(),
              elevation: 0)),

      //Input
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        )
      )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColor: Colors.indigo,

      //Appbar Theme
      appBarTheme: const AppBarTheme(color: Colors.indigo, elevation: 0));
}

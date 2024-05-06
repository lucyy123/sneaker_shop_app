import 'package:flutter/material.dart';

//? --------------------Lighter theme--------------------------


  ThemeData lightMode = ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
          background: Colors.grey.shade300,
          primary: Colors.black,
          secondary: Colors.white));

//*---------------------- Darker theme ------------------------
  ThemeData darkMode = ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
          background: Colors.black,
          primary: Colors.white,
          secondary: Colors.black));


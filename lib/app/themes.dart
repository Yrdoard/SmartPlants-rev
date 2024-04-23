import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData themes = ThemeData(
  textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(
  ),
  cardColor: Colors.white,
  brightness: Brightness.light,
  splashColor: const Color.fromRGBO(199, 150, 119, 1),
  highlightColor: const Color.fromRGBO(100, 50, 0, 1),
  primaryColor: const Color.fromARGB(255, 103, 239, 108),
  bottomSheetTheme: const BottomSheetThemeData(
      surfaceTintColor: Colors.white
  ),
  appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.white
  ),
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 103, 239, 108),
    onPrimary: Colors.white,
    secondary: Colors.white,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
  useMaterial3: true,

);
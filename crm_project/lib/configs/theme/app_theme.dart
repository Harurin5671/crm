import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppTheme {
  final lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: GoogleFonts.kalamTextTheme(),
    useMaterial3: true,
    colorSchemeSeed : Colors.blue, 
  );
  final darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.kalamTextTheme(),
    useMaterial3: true,
    colorSchemeSeed : Colors.blue, 
  );
}
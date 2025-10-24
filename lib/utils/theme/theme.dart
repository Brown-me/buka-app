import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';


class MAppTheme {
  MAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: const Color(0xFF0078D7),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    textTheme: MTextTheme.lightTextTheme,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.yellow, // The background color when text is selected
      selectionHandleColor: Colors.orange, // Color of the handles at the ends of the selection
      cursorColor: Colors.blue,
    ),
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: MAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: MCheckboxTheme.lightCheckboxTheme,
    chipTheme: MChipTheme.lightChipTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  primaryColor: const Color(0xFF0078D7),
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  textTheme: MTextTheme.lightTextTheme,
  textSelectionTheme: const TextSelectionThemeData(
  selectionColor: Colors.yellow, // The background color when text is selected
  selectionHandleColor: Colors.orange, // Color of the handles at the ends of the selection
  cursorColor: Colors.blue,
  ),
  elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
  appBarTheme: MAppBarTheme.lightAppBarTheme,
  bottomSheetTheme: MBottomSheetTheme.lightBottomSheetTheme,
  checkboxTheme: MCheckboxTheme.lightCheckboxTheme,
  chipTheme: MChipTheme.lightChipTheme,
  outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
  inputDecorationTheme: MTextFormFieldTheme.lightInputDecorationTheme,
  );
}

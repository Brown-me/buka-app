import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MChipTheme {
  MChipTheme ._();

  static ChipThemeData lightChipTheme = const ChipThemeData(
    disabledColor: Colors.white,
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: MColors.secondary,
    backgroundColor: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 12),
    checkmarkColor: Color(0xFF4F4F4F),
    side: BorderSide(color: Color(0xFFD8D3D3))

  );


  static ChipThemeData darkChipTheme = const ChipThemeData(
      disabledColor: Colors.white,
      labelStyle: TextStyle(color: Colors.black),
      selectedColor: MColors.secondary,
      backgroundColor: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 17.0, vertical: 12),
      checkmarkColor: Color(0xFF4F4F4F),
      side: BorderSide(color: Color(0xFFD8D3D3))

  );
}
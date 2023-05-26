import 'package:flutter/material.dart';
import 'package:passdocument/src/constants/colors.dart';
import 'package:passdocument/src/constants/sizes.dart';

// -- Dark and Light Elevated Button Themes
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances

    //Light Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

    //Dark Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      side: const BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),    
  );
}
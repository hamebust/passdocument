import 'package:flutter/material.dart';
import 'package:passdocument/src/constants/colors.dart';
import 'package:passdocument/src/constants/sizes.dart';

// -- Dark and Light Elevated Button Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._(); //To avoid creating instanc es

  //Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      backgroundColor: tPrimaryColor,
      side: const BorderSide(color: tPrimaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  //Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      side: const BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
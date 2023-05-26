import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

// -- Dark and Light Elevated Button Themes
class TOtpFocusBorderColorTheme {
  TOtpFocusBorderColorTheme._(); //To avoid creating instances

    //Light Theme
  static final lightOtpFocusBorderColorTheme = OtpTextField(
    focusedBorderColor: Colors.green.shade50
  );

    //Dark Theme
  static final darkOtpFocusBorderColorTheme = OtpTextField(
    focusedBorderColor: Colors.white
  );
}
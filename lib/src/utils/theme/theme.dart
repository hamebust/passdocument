import 'package:flutter/material.dart';
import 'package:passdocument/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:passdocument/src/utils/theme/widget_themes/outline_button_theme.dart';
import 'package:passdocument/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:passdocument/src/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._(); /*======================= Tema de la App =======*/

  static ThemeData lightTheme = ThemeData(
    /*---------------Tema claro */
    brightness: /*.........................................Colres de fondo*/
        Brightness.light,
    primarySwatch: const MaterialColor(
      0xFF4CAF50,
      <int, Color>{
        50: Color(0xFFE8F5E9),
        100: Color(0xFFC8E6C9),
        200: Color(0xFFA5D6A7),
        300: Color(0xFF4CAF50),
        400: Color(0xFF66BB6A),
        500: Color(0xFF4CAF50),
        600: Color(0xFF43A047),
        700: Color(0xFF388E3C),
        800: Color(0xFF2E7D32),
        900: Color(0xFF1B5E20),
      },
    ),
    textTheme: /*..........................................Colores de textos*/
        TTextTheme.lightTextTheme,
    outlinedButtonTheme: /*................................Colores de botones*/
        TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: 
        TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: /*................................Colores de InputForm*/
        TTextFormFieldTheme.lightInputDecorationTheme,
    
  );

  static ThemeData darkTheme = ThemeData(
    /*--------------Tema Oscuro*/
    brightness: /*.........................................Colres de fondo*/
        Brightness.dark,
    textTheme: /*..........................................Colores de textos*/
        TTextTheme.darkTextTheme,
    outlinedButtonTheme: /*................................Colores de botones*/
        TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: 
        TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: /*...............................Colores de InputForm*/
        TTextFormFieldTheme.darkInputDecorationTheme,
  );
}

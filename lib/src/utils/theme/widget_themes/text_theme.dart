import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {


//Tema texto claro que se envían al tema en lib\src\utils\theme\theme.dart
static TextTheme lightTextTheme = TextTheme(
  titleLarge: GoogleFonts.roboto(color: Colors.black87, fontSize: 24),
  titleMedium: GoogleFonts.acme(color: Colors.black54, fontSize: 18),
  titleSmall: GoogleFonts.acme(color: Colors.black54, fontSize: 14),

);


//Tema Oscuro que se envian al tema en lib\src\utils\theme\theme.dart
static TextTheme darkTextTheme = TextTheme(
  titleLarge: GoogleFonts.roboto(color: Colors.white70, fontSize: 24),
  titleMedium: GoogleFonts.acme(color: Colors.white54, fontSize: 18),
  titleSmall: GoogleFonts.acme(color: Colors.white54, fontSize: 14),


);


}


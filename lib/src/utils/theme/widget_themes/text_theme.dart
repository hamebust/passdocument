import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passdocument/src/constants/colors.dart';

class TTextTheme {


//Tema texto claro que se envían al tema en lib\src\utils\theme\theme.dart
static TextTheme lightTextTheme = TextTheme(
  titleLarge:    /* --                      -- */  GoogleFonts.roboto     (fontSize:24.0,                               color: Colors.black87,),
  titleMedium:   /* --                      -- */  GoogleFonts.acme       (fontSize:18.0,                               color: Colors.black54,),
  titleSmall:    /* --                      -- */  GoogleFonts.acme       (fontSize:14.0,                               color: Colors.black54,),

  displayLarge:  /* --Sustituye a headline1 -- */  GoogleFonts.montserrat (fontSize:28.0,fontWeight: FontWeight.bold,   color: tDarkColor), 
  displayMedium: /* --Sustituye a headline2 -- */  GoogleFonts.montserrat (fontSize:24.0,fontWeight: FontWeight.w700,   color: tDarkColor),
  displaySmall:  /* --Sustituye a headline3 -- */  GoogleFonts.poppins    (fontSize:24.0,fontWeight: FontWeight.w700,   color: tDarkColor),
  headlineMedium:/* --Sustituye a headline4 -- */  GoogleFonts.poppins    (fontSize:16.0,fontWeight: FontWeight.w600,   color: tDarkColor),
  headlineLarge: /* --Sustituye a headline6 -- */  GoogleFonts.poppins    (fontSize:14.0,fontWeight: FontWeight.w600,   color: tDarkColor),
  bodyLarge:     /* --Sustituye a bodyText1 -- */  GoogleFonts.poppins    (fontSize:14.0,fontWeight: FontWeight.normal, color: tDarkColor),
  bodyMedium:    /* --Sustituye a bodyText2 -- */  GoogleFonts.poppins    (fontSize:14.0,fontWeight: FontWeight.normal, color: tDarkColor),

);


//Tema Oscuro que se envian al tema en lib\src\utils\theme\theme.dart
static TextTheme darkTextTheme = TextTheme(
  titleLarge:    /* --                      -- */ GoogleFonts.roboto     (fontSize: 24.0,                              color:Colors.white70, ),
  titleMedium:   /* --                      -- */ GoogleFonts.acme       (fontSize: 18.0,                              color:Colors.white54, ),
  titleSmall:    /* --                      -- */ GoogleFonts.acme       (fontSize: 14.0,                              color:Colors.white54, ),

  displayLarge:  /* --Sustituye a headline1  -- */GoogleFonts.montserrat (fontSize:28.0,fontWeight: FontWeight.bold,   color: tWhiteColor), 
  displayMedium: /* --Sustituye a headline2  -- */GoogleFonts.montserrat (fontSize:24.0,fontWeight: FontWeight.w700,   color: tWhiteColor),
  displaySmall:  /* --Sustituye a headline3  -- */GoogleFonts.poppins    (fontSize:24.0,fontWeight: FontWeight.w700,   color: tWhiteColor),
  headlineMedium:/* --Sustituye a headline4  -- */GoogleFonts.poppins    (fontSize:16.0,fontWeight: FontWeight.w600,   color: tWhiteColor),
  headlineLarge: /* --Sustituye a headline6  -- */GoogleFonts.poppins    (fontSize:14.0,fontWeight: FontWeight.w600,   color: tWhiteColor),
  bodyLarge:     /* --Sustituye a bodyText1  -- */GoogleFonts.poppins    (fontSize:14.0,fontWeight: FontWeight.normal, color: tWhiteColor),
  bodyMedium:    /* --Sustituye a bodyText2  -- */GoogleFonts.poppins    (fontSize:14.0,fontWeight: FontWeight.normal, color: tWhiteColor),

);


}


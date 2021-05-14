import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _primaryColor = const Color(0xffC53232);

final _canvasColor = const Color(0xff212121);

final _headline1 = GoogleFonts.kronaOne(
  fontWeight: FontWeight.w400,
  fontSize: 24,
  color: _primaryColor,
);

final _bodyText1 = GoogleFonts.jura(
  fontWeight: FontWeight.w700,
  fontSize: 18,
  color: Colors.white,
);

final _caption = GoogleFonts.jura(
  fontWeight: FontWeight.w400,
  fontSize: 18,
  color: Colors.white,
);

final _bodyText2 = GoogleFonts.jura(
  fontWeight: FontWeight.w700,
  fontSize: 21,
  color: _primaryColor,
);

final themeData = ThemeData(
    brightness: Brightness.dark,
    canvasColor: _canvasColor,
    primaryColor: _primaryColor,
    accentColor: _primaryColor,
    textTheme: TextTheme(
      headline1: _headline1,
      bodyText1: _bodyText1,
      bodyText2: _bodyText2,
      caption: _caption,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
      opacity: 1.0,
    ));

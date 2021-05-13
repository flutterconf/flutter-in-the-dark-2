import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FontType { krona, jura }

class AppTextStyle {
  static TextStyle getAppTextStyle(
      {double size = 14,
      FontWeight weight = FontWeight.normal,
      FontStyle style = FontStyle.normal,
      Color color = Colors.black,
      FontType fontType = FontType.krona}) {
    switch (fontType) {
      case FontType.krona:
        return GoogleFonts.kronaOne(
          color: color,
          fontSize: size,
          fontWeight: weight,
        );
      case FontType.jura:
        return GoogleFonts.jura(
          color: color,
          fontSize: size,
          fontWeight: weight,
        );
    }

    // TextStyle(
    // color: color,
    // fontSize: size,
    // fontWeight: weight,
    // fontStyle: style,
    //   fontFamily: "Jost"
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KronaText extends StatelessWidget {
  const KronaText(
    this.text, {
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.white,
    Key? key,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.kronaOne(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

class JuraText extends StatelessWidget {
  const JuraText(
    this.text, {
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.white,
    Key? key,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.jura(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

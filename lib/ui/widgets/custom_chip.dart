import 'package:desafio_flutter_in_the_dark_2/ui/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends StatelessWidget {
  final String title;
  final bool active;

  CustomChip({@required this.title, @required this.active});

  final color = ColorTheme.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: ColorTheme.red),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Text(
              title,
              style: GoogleFonts.jura(),
            ),
            _buildCircle(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCircle(BuildContext context) {
    final size = 25.0;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}

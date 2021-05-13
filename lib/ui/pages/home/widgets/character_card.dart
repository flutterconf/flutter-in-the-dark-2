import 'package:desafio_flutter_in_the_dark_2/data/character.dart';
import 'package:desafio_flutter_in_the_dark_2/ui/pages/home/widgets/unlock_alert.dart';
import 'package:desafio_flutter_in_the_dark_2/ui/theme/color_theme.dart';
import 'package:desafio_flutter_in_the_dark_2/ui/widgets/custom_chip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  CharacterCard({@required this.character});

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return UnlockAlert();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showAlert(context),
      child: Material(
        elevation: 8,
        color: ColorTheme.surface,
        child: Container(
          width: 200.0,
          child: Column(
            children: [
              _buildImage(context),
              _buildDetails(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: ColorTheme.surface,
        ),
        child: Column(
          children: [
            Text(
              character.name,
              style: GoogleFonts.kronaOne(
                color: ColorTheme.red,
              ),
            ),
            SizedBox(
              width: 50.0,
/*               child: CustomChip(title: 'Lethargy activated', active: false),
 */
            )
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset('characters/${character.name.toLowerCase()}.png'),
          Positioned.fill(child: _buildFilter(context)),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: _buildLock(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLock(BuildContext context) {
    final color = ColorTheme.red;
    final size = 50.0;
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: color),
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.vpn_key,
        color: color,
      ),
    );
  }

  Widget _buildFilter(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorTheme.red,
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.grey.withOpacity(0.0),
                ColorTheme.red,
              ],
              stops: [
                0.0,
                1.0
              ])),
    );
  }
}

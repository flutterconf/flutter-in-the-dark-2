import 'package:desafio_flutter_in_the_dark_2/data/atria.dart';
import 'package:desafio_flutter_in_the_dark_2/data/leick.dart';
import 'package:desafio_flutter_in_the_dark_2/data/lilith.dart';
import 'package:desafio_flutter_in_the_dark_2/ui/pages/home/widgets/character_card.dart';
import 'package:desafio_flutter_in_the_dark_2/ui/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  static const String id = "/home";

  final characters = [
    Atria(),
    Leick(),
    Lilith(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      backgroundColor: ColorTheme.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
        child: Container(
          child: Column(
            children: [
              _buildTitle(context),
              _buildCards(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text('Zhing Quad',
              style: GoogleFonts.jura(
                color: Colors.white,
              )),
          Icon(
            Icons.arrow_downward,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildCards(BuildContext context) {
    // TODO: listview.

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          CharacterCard(character: characters[0]),
          SizedBox(width: 20.0),
          CharacterCard(character: characters[1]),
          SizedBox(width: 20.0),
          CharacterCard(character: characters[2]),
          SizedBox(width: 20.0),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      actions: [
        Row(
          children: [
            Text(
              'Machine unlocked'.toUpperCase(),
              style: GoogleFonts.jura(
                letterSpacing: 2.0,
                color: ColorTheme.red,
              ),
            ),
            SizedBox(width: 25.0),
            Icon(
              Icons.lock_open,
              color: Colors.white,
            ),
            SizedBox(width: 25.0)
          ],
        )
      ],
    );
  }
}

import 'package:desafio_flutter_in_the_dark_2/widgets/graphs/character_graphs.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/zhing_quad.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/lethargy_button.dart';
import 'package:flutter/material.dart';

import '../data/character.dart';

class CharacterPageBody extends StatelessWidget {
  final Character character;
  final VoidCallback onBackButtonPressed;

  const CharacterPageBody({
    Key? key,
    required this.character,
    required this.onBackButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ZhingQuadButton(
                onPressed: onBackButtonPressed,
              ),
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(character.imageSrc),
                backgroundColor: Colors.transparent,
              ),
              LethargyButton(lethargyActivated: false),
            ],
          ),
        ),
        Text(character.name),
        SizedBox(height: 90),
        CharacterGraphs(),
      ],
    );
  }
}

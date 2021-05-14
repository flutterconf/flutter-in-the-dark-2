import 'package:desafio_flutter_in_the_dark_2/widgets/card/character_card.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/dialog/unlock_dialog.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/zhing_quad.dart';
import 'package:flutter/material.dart';

import '../data/character.dart';

class HomePageBody extends StatelessWidget {
  final List<Character> characters;
  final List<Character> offCharacters;
  final Function(Character, String) onUnlockCharacter;
  final Function(Character) onCharacterPressed;

  const HomePageBody({
    Key? key,
    required this.characters,
    required this.offCharacters,
    required this.onUnlockCharacter,
    required this.onCharacterPressed,
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
            children: [ZhingQuadButton()],
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 400,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: characters.length,
              separatorBuilder: (_, __) => SizedBox(width: 47),
              itemBuilder: (_, index) {
                final character = characters[index];
                return CharacterCard(
                  lethargyActivated: !offCharacters.contains(character),
                  imageSrc: character.imageSrc,
                  title: character.name,
                  onUnlockPressed: () async {
                    final password = await showDialog(
                      context: context,
                      builder: (context) => UnlockDialog(
                        name: character.name,
                      ),
                    );
                    onUnlockCharacter(character, password);
                  },
                  onPressed: () => onCharacterPressed(character),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

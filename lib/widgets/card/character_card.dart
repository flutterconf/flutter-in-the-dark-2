import 'package:desafio_flutter_in_the_dark_2/widgets/card/character_card_header.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/card/character_card_image.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String imageSrc;
  final String title;
  final bool lethargyActivated;
  final VoidCallback onUnlockPressed;
  final VoidCallback onPressed;

  const CharacterCard({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.onUnlockPressed,
    required this.onPressed,
    this.lethargyActivated = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: lethargyActivated ? null : onPressed,
      child: Container(
        height: 360,
        width: 390,
        child: Stack(
          children: [
            CharacterCardImage(
              imageSrc: imageSrc,
              height: 225,
              onUnlockPressed: lethargyActivated ? onUnlockPressed : null,
            ),
            Positioned(
              top: 220,
              child: CharacterCardHeader(
                  width: 390,
                  height: 140,
                  title: title.toUpperCase(),
                  lethargyActivated: lethargyActivated),
            ),
          ],
        ),
      ),
    );
  }
}

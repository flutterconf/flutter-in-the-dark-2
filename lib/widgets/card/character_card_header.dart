import 'package:desafio_flutter_in_the_dark_2/widgets/card/character_header_title.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/lethargy_button.dart';
import 'package:flutter/material.dart';

class CharacterCardHeader extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final bool lethargyActivated;

  const CharacterCardHeader({
    Key? key,
    required this.title,
    required this.width,
    required this.height,
    required this.lethargyActivated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canvasColor = theme.canvasColor;

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: canvasColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CharacterCardHeaderTitle(
            padding: const EdgeInsets.only(top: 29, left: 37),
            title: title,
          ),
          LethargyButton(lethargyActivated: lethargyActivated),
        ],
      ),
    );
  }
}

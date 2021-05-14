import 'package:flutter/material.dart';

class CharacterCardHeaderTitle extends StatelessWidget {
  final String title;
  final EdgeInsets padding;

  const CharacterCardHeaderTitle({
    Key? key,
    required this.title,
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final headline1 = theme.textTheme.headline1;
    return Padding(
      padding: padding,
      child: Text(title, style: headline1),
    );
  }
}

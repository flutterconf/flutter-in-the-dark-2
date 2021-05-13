import 'package:desafio_flutter_in_the_dark_2/utils/constants.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/hero_card.dart';
import 'package:flutter/material.dart';

class LockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackLight,
        appBar: AppBar(),
        body: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Center(
              child: Wrap(
                spacing: defaultPadding,
                children: const [
                  HeroCard(heroName: 'atria'),
                  HeroCard(heroName: 'leick'),
                  HeroCard(heroName: 'lilith'),
                ],
              ),
            ),
          );
        }));
  }
}

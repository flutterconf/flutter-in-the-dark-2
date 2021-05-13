import 'package:desafio_flutter_in_the_dark_2/utils/constants.dart';
import 'package:flutter/material.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({Key key, this.heroName}) : super(key: key);
  final String heroName;
  @override
  Widget build(BuildContext context) {
    final titleStyle =
        TextStyle(color: red, fontWeight: FontWeight.normal, fontSize: 24);
    return SizedBox(
        width: maxCardWidth,
        height: maxCardWidth,
        child: Column(
          children: [
            Stack(children: [
              Image.asset('assets/$heroName.png'),
              Container(
                  width: defaultPadding,
                  height: defaultPadding,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    red,
                    black.withOpacity(0.3),
                  ], stops: [
                    0,
                    1,
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter))),
              Positioned(
                bottom: 0,
                top: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 75.0,
                    height: 75.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: red,
                        width: 2.0,
                      ),
                    ),
                    child: Image.asset('assets/key.png', color: red),
                  ),
                ),
              ),
            ]),
            Card(
              color: blackLight,
              child: ListTile(
                  title: Text(heroName.toUpperCase(), style: titleStyle),
                  isThreeLine: true,
                  subtitle: LethargicIndicator()),
            )
          ],
        ));
  }
}

class LethargicIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(33)),
          border: Border.all(color: red),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Lethargy Activated', style: TextStyle(color: Colors.white)),
            SizedBox(width: 8),
            CircleAvatar(backgroundColor: red, radius: 2),
          ],
        ));
  }
}

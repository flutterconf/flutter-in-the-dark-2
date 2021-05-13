import 'package:desafio_flutter_in_the_dark_2/data/constants.dart';
import 'package:desafio_flutter_in_the_dark_2/src/core/animations/animations.dart';
import 'package:desafio_flutter_in_the_dark_2/src/core/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:desafio_flutter_in_the_dark_2/src/core/layout/custom_layout_builder.dart';
import 'package:layout/layout.dart';

import '../../../../data/character.dart';

///HomePage
class HomePage extends StatelessWidget {
  ///HomePage constructor
  const HomePage({Key? key}) : super(key: key);

  ///HomePage [routeName]
  static const routeName = 'HomePage';

  ///Router for HomePage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return _Body();
  }
}

class _Body extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customBlack,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 50),
            child: Center(
              child: Row(
                children: [
                  JuraText(
                    'MACHINE UNLOCKED',
                    color: AppColors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  SizedBox(width: 10.0),
                  Icon(Icons.lock_open_rounded),
                ],
              ),
            ),
          ),
        ],
      ),
      body: _DesktopView(),
    );
  }
}

class _DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var columnCount = 3;
    final bp = context.breakpoint;
    if (bp < LayoutBreakpoint.sm) {
      columnCount = 1;
    } else if (bp < LayoutBreakpoint.md) {
      columnCount = 2;
    }

    return GridView.builder(
      itemCount: kCharactersList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columnCount,
        crossAxisSpacing: 20.0,
        childAspectRatio: 1 / 2,
        mainAxisExtent: 350,
      ),
      itemBuilder: (context, index) {
        final character = kCharactersList[index];
        return SlideAnimation(
          initialOffset: Offset(0, 100),
          duration: 1000,
          child: CharacterCard(character: character),
        );
      },
    );
  }
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    Key? key,
    required this.character,
  }) : super(key: key);
  final Character character;

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.customBlack,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: KronaText(
                character.name.toUpperCase(),
                color: AppColors.red,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            JuraText(
              'This action will unlock lethargy mode',
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            SizedBox(height: 20.0),
            JuraText(
              'Are you ${character.name}?',
              color: AppColors.red,
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDialog(context);
      },
      child: Card(
        color: AppColors.customBlack,
        elevation: 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    character.imgSrc,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  KronaText(
                    character.name.toUpperCase(),
                    color: AppColors.red,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      border: Border.all(
                        color: AppColors.red,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        JuraText('Lethargy Activated'),
                        SizedBox(width: 10.0),
                        CircleAvatar(
                          backgroundColor: AppColors.red,
                          radius: 6.0,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

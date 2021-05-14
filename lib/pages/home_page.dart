import 'package:desafio_flutter_in_the_dark_2/widgets/character_page_body.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/home_page_body.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/logo.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/unlock_machine_button.dart';
import 'package:flutter/material.dart';

import '../data/atria.dart';
import '../data/character.dart';
import '../data/codes.dart';
import '../data/leick.dart';
import '../data/lilith.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Character> _characters = [
    Atria(),
    Leick(),
    Lilith(),
  ];

  final List<Character> _offCharacters = [];

  Character? _selectedCharacter;

  @override
  Widget build(BuildContext context) {
    final body = _selectedCharacter != null
        ? CharacterPageBody(
            character: _selectedCharacter!,
            onBackButtonPressed: () {
              setState(() {
                _selectedCharacter = null;
              });
            })
        : HomePageBody(
            characters: _characters,
            offCharacters: _offCharacters,
            onUnlockCharacter: (character, password) {
              String? code;
              if (character is Atria) {
                code = "${Codes.atriaCode}";
              } else if (character is Leick) {
                code = "${Codes.leickCode}";
              } else if (character is Lilith) {
                code = "${Codes.lilithCode}";
              }
              if (code != null && password == code) {
                setState(() {
                  _offCharacters.add(character);
                  _selectedCharacter = character;
                });
              } else {
                print("No");
              }
            },
            onCharacterPressed: (character) {
              setState(() {
                _selectedCharacter = character;
              });
            },
          );

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.61,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: UnlockMachineButton(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Logo(),
      ),
      body: body,
    );
  }
}

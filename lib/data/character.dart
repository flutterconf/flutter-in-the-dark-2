import 'atria.dart';
import 'leick.dart';
import 'lilith.dart';

abstract class Character {
  final String name;
  final int flightLevel;
  final int flameLevel;
  final int readMindsLevel;
  final String image;
  bool activated;
  int code;

  Character({this.name, this.flightLevel, this.flameLevel, this.readMindsLevel, this.image, this.activated = false, this.code});
}

List<Character> getCharacters() => [Atria(), Leick(), Lilith()];
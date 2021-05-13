import 'package:desafio_flutter_in_the_dark_2/data/character.dart';

import 'codes.dart';

class Atria extends Character {
  Atria()
      : super(
            name: "Atria",
            flightLevel: 10,
            flameLevel: 20,
            readMindsLevel: 30,
            image: "atria.png",
            code: Codes.atriaCode);
}

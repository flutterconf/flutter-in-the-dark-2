import 'package:desafio_flutter_in_the_dark_2/widgets/graphs/flame_thrower_graph.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/graphs/fly_evolution_graph.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/graphs/medium_graph.dart';
import 'package:flutter/material.dart';

class CharacterGraphs extends StatelessWidget {
  const CharacterGraphs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FlyEvolutionGraph(
          b0: 0.1,
          b1: 0.7,
          b2: 0.5,
          b3: 0.8,
          b4: 0.6,
        ),
        FlameThrowerGraph(
          percentage: 78,
        ),
        MediumGraph(
          b1: 0.5,
          b2: 0.6,
          b3: 1,
          b4: 0.8,
        ),
      ],
    );
  }
}

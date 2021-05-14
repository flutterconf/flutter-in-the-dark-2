import 'package:flutter/material.dart';

class FlameThrowerGraph extends StatelessWidget {
  final int percentage;
  final String title;

  FlameThrowerGraph({
    Key? key,
    required this.percentage,
    this.title = 'FLAME THROWER',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final percentageStyle = theme.textTheme.bodyText2?.copyWith(fontSize: 72);

    return Column(
      children: [
        Container(
          width: 241,
          height: 241,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(241),
          ),
          child: Center(
            child: Text('$percentage%', style: percentageStyle),
          ),
        ),
        SizedBox(height: 90),
        Text(title),
      ],
    );
  }
}

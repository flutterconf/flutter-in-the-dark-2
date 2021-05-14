import 'package:flutter/material.dart';

class MediumGraph extends StatelessWidget {
  final double b1;
  final double b2;
  final double b3;
  final double b4;
  final String title;

  MediumGraph({
    Key? key,
    required this.b1,
    required this.b2,
    required this.b3,
    required this.b4,
    this.title = 'MEDIUM',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 241,
          height: 241,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MediumGraphItem(label: 'B1', value: b1),
              MediumGraphItem(label: 'B2', value: b2),
              MediumGraphItem(label: 'B3', value: b3),
              MediumGraphItem(label: 'B4', value: b4),
            ],
          ),
        ),
        SizedBox(height: 90),
        Text(title),
      ],
    );
  }
}

class MediumGraphItem extends StatelessWidget {
  final String label;
  final double value;

  const MediumGraphItem({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final graphColor = theme.primaryColor;
    final labelStyle = theme.textTheme.caption;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 200 * value,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: graphColor,
          ),
        ),
        Text(label, style: labelStyle),
      ],
    );
  }
}

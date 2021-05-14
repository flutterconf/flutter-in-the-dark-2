import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final primaryColor = theme.primaryColor;
    return Container(
      width: 71,
      height: 71,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(71),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            'D',
            style: textTheme.headline1?.copyWith(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w800,
            ),
          ),
          Container(
            width: 52.66,
            height: 3,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LethargyButton extends StatelessWidget {
  final bool lethargyActivated;

  const LethargyButton({Key? key, required this.lethargyActivated})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    final bodyText1 = theme.textTheme.bodyText1;
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 26),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                lethargyActivated ? 'Lethargy Activated' : 'Lethargy off',
                style: bodyText1,
              ),
              if (lethargyActivated)
                SizedBox(
                  width: 19,
                ),
              if (lethargyActivated)
                Container(
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

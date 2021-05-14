import 'package:flutter/material.dart';

class UnlockMachineButton extends StatelessWidget {
  const UnlockMachineButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme.bodyText1?.copyWith(
      color: theme.primaryColor,
    );
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('MACHINE UNLOCKED', style: textTheme),
        SizedBox(width: 21.0),
        Icon(Icons.lock_open_rounded, size: 21),
      ],
    );
  }
}

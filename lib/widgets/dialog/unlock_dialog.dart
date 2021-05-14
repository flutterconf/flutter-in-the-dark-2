import 'package:desafio_flutter_in_the_dark_2/widgets/dialog/dialog_body.dart';
import 'package:flutter/material.dart';

class UnlockDialog extends StatelessWidget {
  final String name;

  const UnlockDialog({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canvasColor = theme.canvasColor;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      elevation: 1,
      backgroundColor: canvasColor,
      child: DialogBody(name: name),
    );
  }
}

import 'package:desafio_flutter_in_the_dark_2/widgets/dialog/dialog_close_button.dart';
import 'package:desafio_flutter_in_the_dark_2/widgets/dialog/dialog_form.dart';
import 'package:flutter/material.dart';

class DialogBody extends StatelessWidget {
  final String name;

  const DialogBody({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final headline1 = textTheme.headline1;
    final bodyText1 = textTheme.bodyText1;
    final bodyText2 = textTheme.bodyText2;

    return Container(
      width: 420,
      height: 390,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: DialogCloseButton(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Warning', style: headline1),
                Text('This action will unlock lethargy mode', style: bodyText1),
                SizedBox(height: 37),
                Text('Are you $name?', style: bodyText2),
                SizedBox(height: 17),
                DialogForm(
                  onSubmit: (password) => Navigator.of(context).pop(password),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ZhingQuadButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const ZhingQuadButton({
    Key? key,
    this.title = 'Zhing Quad',
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconTheme = theme.iconTheme;
    final bodyText1 = theme.textTheme.bodyText1;
    return Padding(
      padding: const EdgeInsets.only(top: 17, left: 26),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onPressed != null)
                Icon(
                  Icons.arrow_back,
                  color: iconTheme.color,
                ),
              Text(title, style: bodyText1),
              if (onPressed == null)
                Icon(
                  Icons.arrow_downward,
                  color: iconTheme.color,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

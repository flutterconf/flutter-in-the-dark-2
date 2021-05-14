import 'package:flutter/material.dart';

class CharacterCardImage extends StatelessWidget {
  final String imageSrc;
  final double height;
  final double width;
  final VoidCallback? onUnlockPressed;

  const CharacterCardImage({
    Key? key,
    required this.imageSrc,
    this.onUnlockPressed,
    this.height = double.infinity,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final canvasColor = theme.canvasColor;
    final primaryColor = theme.primaryColor;

    return Container(
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: AssetImage(imageSrc),
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (onUnlockPressed != null)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                  colors: [
                    canvasColor.withOpacity(.7),
                    primaryColor.withOpacity(.7),
                  ],
                  stops: [0, 1],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          if (onUnlockPressed != null)
            MaterialButton(
              onPressed: onUnlockPressed,
              textColor: primaryColor,
              child: Icon(
                Icons.vpn_key,
                size: 36.67,
              ),
              padding: EdgeInsets.all(19.17),
              shape: CircleBorder(
                side: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

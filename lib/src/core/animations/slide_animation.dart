import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SlideAnimation extends HookWidget {
  SlideAnimation({
    required this.child,
    required this.initialOffset,
    this.duration = 600,
    this.curve = Curves.bounceOut,
  });

  final Widget child;
  final Offset initialOffset;
  final int duration;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final _duration = Duration(milliseconds: duration);

    final animationController = useAnimationController(
      duration: _duration,
    )..forward();

    final slideAnimation = useAnimation(
      Tween<double>(begin: 1, end: 0).animate(
        CurvedAnimation(
          parent: animationController,
          curve: curve,
        ),
      ),
    );

    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return Transform.translate(
            child: AnimatedOpacity(
              duration: _duration,
              opacity: animationController.value,
              child: child,
            ),
            offset: initialOffset * slideAnimation,
          );
        },
        child: child);
  }
}

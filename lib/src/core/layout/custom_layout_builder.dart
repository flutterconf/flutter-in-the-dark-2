import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

class CustomLayoutBuilder extends StatelessWidget {
  const CustomLayoutBuilder({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final bp = context.breakpoint;
    if (bp < LayoutBreakpoint.sm) {
      return mobile;
    } else if (bp < LayoutBreakpoint.md) {
      return tablet;
    }
    return desktop;
  }
}

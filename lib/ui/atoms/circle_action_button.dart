import 'package:flutter/material.dart';

import 'package:dating_ui_challenge/ui/atoms/circle_shadowed.dart';

class CircleActionButton extends StatelessWidget {
  final double iconSize;
  final IconData icon;
  final Color iconColor;
  final VoidCallback onPressed;

  const CircleActionButton(
      {Key? key,
      required this.iconSize,
      required this.icon,
      required this.iconColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleShadowed(
      children: IconButton(
        iconSize: iconSize,
        icon: Icon(icon),
        onPressed: onPressed,
        color: iconColor,
      ),
    );
  }
}

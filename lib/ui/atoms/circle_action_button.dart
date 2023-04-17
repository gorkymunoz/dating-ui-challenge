import 'package:dating_ui_challenge/foundations/colors.dart';
import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: DatingColors.colorOnSurface,
          border: Border.all(color: DatingColors.colorGray.withAlpha(25)),
          boxShadow: const [
            BoxShadow(color: DatingColors.colorGray, blurRadius: 25)
          ]),
      child: IconButton(
        iconSize: iconSize,
        icon: Icon(icon),
        onPressed: onPressed,
        color: iconColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CircleActionButton extends StatelessWidget {
  final double iconSize;
  final IconData icon;
  final VoidCallback onPressed;

  const CircleActionButton(
      {Key? key,
      required this.iconSize,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.5), offset: const Offset(0, 3))
      ]),
      child: IconButton(
        iconSize: iconSize,
        icon: Icon(icon),
        onPressed: onPressed,
      ),
    );
  }
}

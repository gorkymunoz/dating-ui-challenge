import 'package:flutter/material.dart';

import 'atoms.dart';

class CircleButtonGradientProperties {
  final List<Color> colors;
  final Alignment begin;
  final Alignment end;

  CircleButtonGradientProperties(
      {required this.colors,
      this.begin = Alignment.topLeft,
      this.end = Alignment.bottomRight});
}

class CircleActionGradientButton extends StatelessWidget {
  final double iconSize;
  final IconData icon;
  final CircleButtonGradientProperties gradientProperties;
  final VoidCallback onPressed;

  const CircleActionGradientButton(
      {Key? key,
      required this.iconSize,
      required this.icon,
      required this.gradientProperties,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleShadowed(
      children: ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
                  colors: gradientProperties.colors,
                  begin: gradientProperties.begin,
                  end: gradientProperties.end)
              .createShader(bounds);
        },
        child: IconButton(
          iconSize: iconSize,
          icon: Icon(icon),
          color: Colors.white,
          onPressed: onPressed,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../foundations/foundations.dart';

class CircleShadowed extends StatelessWidget {
  final Widget children;

  const CircleShadowed({Key? key, required this.children}) : super(key: key);

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
        child: children);
  }
}

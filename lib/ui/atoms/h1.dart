import 'package:dating_ui_challenge/foundations/colors.dart';
import 'package:flutter/material.dart';

import 'package:dating_ui_challenge/foundations/sizes.dart';

class H1 extends StatelessWidget {
  final String text;

  const H1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: DatingSizes.h1Size, color: DatingColors.colorOnLight),
    );
  }
}

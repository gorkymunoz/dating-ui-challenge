import 'package:flutter/material.dart';

import '../../foundations/foundations.dart';

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

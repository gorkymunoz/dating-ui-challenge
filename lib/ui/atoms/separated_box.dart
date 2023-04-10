import 'package:dating_ui_challenge/foundations/sizes.dart';
import 'package:flutter/material.dart';

class DatingSeparator extends StatelessWidget {
  final double nHeight;

  const DatingSeparator({Key? key, required this.nHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: nHeight * DatingSizes.baseSeparated,
    );
  }
}

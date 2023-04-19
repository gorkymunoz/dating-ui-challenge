import 'package:flutter/material.dart';

import '../../foundations/foundations.dart';

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

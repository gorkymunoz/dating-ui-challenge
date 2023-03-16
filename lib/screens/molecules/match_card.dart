import 'package:dating_ui_challenge/foundations/sizes.dart';
import 'package:flutter/material.dart';

import 'package:dating_ui_challenge/foundations/colors.dart';
import 'package:dating_ui_challenge/foundations/spacing.dart';

class MatchPercentageCard extends StatelessWidget {
  final int matchPercentage;

  const MatchPercentageCard({Key? key, required this.matchPercentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DatingSizes.percentageCardSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DatingSpaces.borderPercentageCard),
          gradient: const LinearGradient(colors: [
        DatingColors.initialGradient,
        DatingColors.finalGradient
      ])),
      padding: const EdgeInsets.all(DatingSpaces.paddingXS),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.favorite,
            size: DatingSizes.iconSize,
            color: DatingColors.colorOnSurface,
          ),
          Text(
            '$matchPercentage% Match!',
            style: const TextStyle(color: DatingColors.colorOnSurface),
          )
        ],
      ),
    );
  }
}

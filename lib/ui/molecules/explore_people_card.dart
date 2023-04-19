import 'package:flutter/material.dart';

import '../../foundations/foundations.dart';
import '../atoms/atoms.dart';
import 'molecules.dart';

class ExplorePeopleCard extends StatelessWidget {
  const ExplorePeopleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(DatingSpaces.borderMatchPhoto),
          child: const AssetDatingImage(
            path: 'assets/images/match_1.jpg',
            heightImage: 360,
            widthImage: 348,
          ),
        ),
        const Positioned(
            bottom: -16, child: MatchPercentage(matchPercentage: 95)),
      ],
    );
  }
}

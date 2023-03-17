import 'package:dating_ui_challenge/foundations/spacing.dart';
import 'package:dating_ui_challenge/ui/molecules/match_percentage.dart';
import 'package:flutter/material.dart';

import 'package:dating_ui_challenge/ui/atoms/asset_image.dart';

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
            widthImage: 320,
          ),
        ),
        const Positioned(
            bottom: -16, child: MatchPercentage(matchPercentage: 95)),
      ],
    );
  }
}

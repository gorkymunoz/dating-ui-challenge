import 'dart:developer';
import 'package:flutter/material.dart';

import 'package:dating_ui_challenge/foundations/colors.dart';
import 'package:dating_ui_challenge/ui/atoms/circle_action_button.dart';
import 'package:dating_ui_challenge/ui/atoms/circle_action_gradient_button.dart';

class MatchActions extends StatelessWidget {
  const MatchActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 42,
          child: CircleActionGradientButton(
            iconSize: 22,
            icon: Icons.star,
            gradientProperties: CircleButtonGradientProperties(colors: [
              DatingColors.superLikeIconInitialGradient,
              DatingColors.superLikeIconFinalGradient
            ]),
            onPressed: () {
              log('super like');
            },
          ),
        ),
        SizedBox(
          height: 72,
          child: CircleActionGradientButton(
            iconSize: 24,
            icon: Icons.favorite,
            gradientProperties: CircleButtonGradientProperties(colors: [
              DatingColors.likeIconInitialGradient,
              DatingColors.likeIconFinalGradient
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            onPressed: () {
              log('like');
            },
          ),
        ),
        SizedBox(
          height: 72,
          child: CircleActionGradientButton(
            iconSize: 28,
            icon: Icons.close_rounded,
            gradientProperties: CircleButtonGradientProperties(colors: [
              DatingColors.nextIconInitialGradient,
              DatingColors.nextIconFinalGradient
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            onPressed: () {
              log('no');
            },
          ),
        ),
        SizedBox(
          height: 42,
          child: CircleActionButton(
            iconSize: 22,
            icon: Icons.bolt,
            iconColor: DatingColors.boostIcon,
            onPressed: () {
              log('boost');
            },
          ),
        ),
      ],
    );
  }
}

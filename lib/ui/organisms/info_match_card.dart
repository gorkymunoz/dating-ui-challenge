import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

import 'package:dating_ui_challenge/foundations/colors.dart';
import 'package:dating_ui_challenge/ui/atoms/circle_action_gradient_button.dart';
import 'package:dating_ui_challenge/ui/atoms/circle_action_button.dart';
import 'package:dating_ui_challenge/foundations/spacing.dart';
import 'package:dating_ui_challenge/ui/molecules/explore_people_card.dart';
import 'package:dating_ui_challenge/ui/atoms/separated_box.dart';
import 'package:dating_ui_challenge/ui/atoms/h1.dart';

class InfoMatchCard extends StatelessWidget {
  const InfoMatchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String description = lorem(paragraphs: 1, words: 8);
    return SizedBox(
      height: 650,
      child: Card(
        elevation: 20,
        child: Container(
            padding: const EdgeInsets.all(DatingSpaces.paddingS),
            child: Column(
              children: [
                const ExplorePeopleCard(),
                const DatingSeparator(
                  nHeight: 0.45,
                ),
                const H1(
                  text: 'Timothy Garza',
                ),
                const DatingSeparator(
                  nHeight: 0.15,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                ),
                const DatingSeparator(
                  nHeight: 0.35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 42,
                      child: CircleActionGradientButton(
                        iconSize: 22,
                        icon: Icons.star,
                        gradientProperties:
                            CircleButtonGradientProperties(colors: [
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
                        gradientProperties: CircleButtonGradientProperties(
                            colors: [
                              DatingColors.likeIconInitialGradient,
                              DatingColors.likeIconFinalGradient
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
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
                        gradientProperties: CircleButtonGradientProperties(
                            colors: [
                              DatingColors.nextIconInitialGradient,
                              DatingColors.nextIconFinalGradient
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
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
                )
              ],
            )),
      ),
    );
  }
}

import 'dart:developer';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:dating_ui_challenge/domain/providers/InfomatchCardProvider.dart';
import 'package:dating_ui_challenge/foundations/colors.dart';
import 'package:dating_ui_challenge/ui/atoms/circle_action_gradient_button.dart';
import 'package:dating_ui_challenge/ui/atoms/circle_action_button.dart';
import 'package:dating_ui_challenge/foundations/spacing.dart';
import 'package:dating_ui_challenge/ui/molecules/explore_people_card.dart';
import 'package:dating_ui_challenge/ui/atoms/separated_box.dart';
import 'package:dating_ui_challenge/ui/atoms/h1.dart';
import 'package:dating_ui_challenge/utils/utils.dart';

class InfoMatchCard extends StatelessWidget {
  const InfoMatchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => buildFrontCard(context);

  Widget buildFrontCard(BuildContext context) => GestureDetector(
        child: Builder(
          builder: (context) {
            final provider = context.watch<InfoMatchCardProvider>();
            final position = provider.position;
            final isDragging = provider.isDragging;

            final milliseconds = isDragging ? 0 : 400;
            return AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: milliseconds),
                transform: Matrix4.identity()
                  ..translate(position.dx, position.dy),
                child: buildCard());
          },
        ),
        onPanStart: (details) =>
            context.read<InfoMatchCardProvider>().startPosition(details),
        onPanUpdate: (details) =>
            context.read<InfoMatchCardProvider>().updatePosition(details),
        onPanEnd: (details) =>
            context.read<InfoMatchCardProvider>().endPosition(details),
      );

  Widget buildCard() => Container(
        height: 650,
        margin: const EdgeInsets.symmetric(horizontal: DatingSpaces.marginXM),
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
                    Utils.generateDescription(),
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

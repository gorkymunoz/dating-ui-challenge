import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/providers/info_match_card_provider.dart';
import '../../foundations/foundations.dart';
import '../../utils/utils.dart';
import '../atoms/atoms.dart';
import '../molecules/molecules.dart';

class InfoMatchCard extends StatefulWidget {
  const InfoMatchCard({Key? key}) : super(key: key);

  @override
  State<InfoMatchCard> createState() => _InfoMatchCardState();
}

class _InfoMatchCardState extends State<InfoMatchCard> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final size = MediaQuery.of(context).size;

      final provider = context.read<InfoMatchCardProvider>();
      provider.setScreenSize(size);
    });
  }

  @override
  Widget build(BuildContext context) => buildDraggableCard(context);

  Widget buildDraggableCard(BuildContext context) => GestureDetector(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final provider = context.watch<InfoMatchCardProvider>();
            final position = provider.position;
            final isDragging = provider.isDragging;
            final milliseconds = isDragging ? 0 : 400;

            final center = constraints.smallest.center(Offset.zero);
            final angle = provider.angle * pi / 180;
            final rotatedMix = Matrix4.identity()
              ..translate(center.dx, center.dy)
              ..rotateZ(angle)
              ..translate(-center.dx, -center.dy);

            return AnimatedContainer(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: milliseconds),
                transform: rotatedMix..translate(position.dx, position.dy),
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
                  const MatchActions()
                ],
              )),
        ),
      );
}

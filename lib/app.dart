import 'package:dating_ui_challenge/screens/molecules/match_card.dart';
import 'package:flutter/material.dart';

class DatingApp extends StatelessWidget {
  const DatingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: MatchPercentageCard(
            matchPercentage: 50,
          ),
        ),
      ),
    );
  }
}

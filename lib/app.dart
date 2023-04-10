import 'package:flutter/material.dart';

import 'package:dating_ui_challenge/ui/organisms/info_match_card.dart';

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
          child: InfoMatchCard(),
        ),
      ),
    );
  }
}

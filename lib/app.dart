import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:dating_ui_challenge/domain/providers/InfomatchCardProvider.dart';
import 'package:dating_ui_challenge/ui/organisms/info_match_card.dart';

class DatingApp extends StatelessWidget {
  const DatingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => InfoMatchCardProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          body: Center(
            child: InfoMatchCard(),
          ),
        ),
      ),
    );
  }
}

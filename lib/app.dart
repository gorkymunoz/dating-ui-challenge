import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/providers/info_match_card_provider.dart';
import 'ui/organisms/organisms.dart';


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

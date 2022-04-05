import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:genius_crew_tictactoe/providers/game_provider.dart';
import 'package:genius_crew_tictactoe/screens/game_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => GameProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Game',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const GamePage(),
    );
  }
}

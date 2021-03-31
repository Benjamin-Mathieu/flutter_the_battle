import 'package:flutter/material.dart';
import 'package:the_battle/pages/AllCharactersPage.dart';

class TheBattleApp extends StatefulWidget {
  @override
  _TheBattleAppState createState() => _TheBattleAppState();
}

class _TheBattleAppState extends State<TheBattleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Battle',
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Knewave'),
      home:
          AllCharactersPage(), // Affichage des personnages avec la classe AllCharactersPage
    );
  }
}

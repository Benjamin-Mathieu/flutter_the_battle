import 'package:flutter/material.dart';
import 'package:the_battle/pages/AllCharactersPage.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Battle',
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Knewave'),
      home: AllCharactersPage(),
    );
  }
}

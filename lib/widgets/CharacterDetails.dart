import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({Key key, this.character}) : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Text(
      'Hello world',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
  }
}

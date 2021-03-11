import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({Key key, this.character}) : super(key: key);
  final Character character;

  // Widget qui ajoute une carte lié au personnage cliqué au dessus de la liste
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[100],
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Column(
                children: <Widget>[
                  Text(
                    character.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Knewave', fontSize: 20, color: Colors.red),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage(character.imagePath()),
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
            // Affichage des statistiques du character (strength, speed, cleverness, intelligence)
            Expanded(
              flex: 6,
              child: Column(
                children: <Widget>[
                  Text('strength : ${character.strength.value}',
                      style: TextStyle(
                          fontFamily: 'Knewave',
                          fontSize: 20,
                          color: Colors.red)),
                  Text('speed : ${character.speed.value}',
                      style: TextStyle(
                          fontFamily: 'Knewave',
                          fontSize: 20,
                          color: Colors.red)),
                  Text('cleverness : ${character.cleverness.value}',
                      style: TextStyle(
                          fontFamily: 'Knewave',
                          fontSize: 20,
                          color: Colors.red)),
                  Text('intelligence : ${character.intelligence.value}',
                      style: TextStyle(
                          fontFamily: 'Knewave',
                          fontSize: 20,
                          color: Colors.red)),
                ],
              ),
            ),
          ]),
    );
  }
}

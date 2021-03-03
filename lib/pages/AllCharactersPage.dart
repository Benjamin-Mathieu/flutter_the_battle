import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_battle/widgets/CharacterMaster.dart';
import 'package:the_battle/data/characters.dart' as staticData;
import 'package:the_battle/models/Character.dart';

class AllCharactersPage extends StatefulWidget {
  AllCharactersPage({Key key}) : super(key: key);

  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage> {
  List<Character> characters;

  _AllCharactersPageState() {
    characters = staticData.characters;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/icons/the-battle-logo.png'),
                  width: 100,
                )
              ],
            )),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Expanded(
                child: CharacterMaster(
                  characters: characters,
                ),
              )
            ])));
  }
}

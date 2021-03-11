import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterMaster.dart';
import 'package:the_battle/data/characters.dart' as staticData;
import 'package:the_battle/widgets/CharacterDetails.dart';

class AllCharactersPage extends StatefulWidget {
  AllCharactersPage({Key key}) : super(key: key);

  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage> {
  List<Character> _characters;
  Character _selectedCharacter;

  _AllCharactersPageState() {
    _characters = staticData.characters;
  }

  void _onCharacterSelect(Character character) {
    setState(() {
      this._selectedCharacter = character;
    });
  }

  Widget _getCharacterDetails() {
    if (this._selectedCharacter != null) {
      return CharacterDetails(character: this._selectedCharacter);
    } else {
      return Container();
    }
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
            SizedBox(
              width: double.infinity,
              child: _getCharacterDetails(),
            ),
            Expanded(
              child: CharacterMaster(
                  characters: _characters, onSelected: this._onCharacterSelect),
            )
          ],
        ),
      ),
    );
  }
}

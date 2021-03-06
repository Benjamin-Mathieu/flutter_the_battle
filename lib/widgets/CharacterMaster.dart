import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterPreview.dart';

class CharacterMaster extends StatefulWidget {
  const CharacterMaster({Key key, this.characters, this.team, this.onSelected})
      : super(key: key);

  final List<Character> characters; // liste de tous les personnages
  final List<Character> team;
  final Function onSelected;

  @override
  _CharacterMasterState createState() => _CharacterMasterState();
}

class _CharacterMasterState extends State<CharacterMaster> {
  Character _selectedCharacter;

  _onCharacterSelect(Character character) {
    setState(() {
      this._selectedCharacter = character;
    });

    widget.onSelected(this._selectedCharacter);
  }

  bool _isVisited(Character character) {
    if (_selectedCharacter == null)
      return false;
    else
      return (character.uuid == _selectedCharacter.uuid);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.characters.length,
      itemBuilder: (BuildContext context, int index) {
        if (index != null) {
          final Character character = widget.characters[index];

          return CharacterPreview(
            character: character,
            onSelected: _onCharacterSelect,
            visited: _isVisited(character),
          );
        } else {
          return Container();
        }
      },
    );
  }
}

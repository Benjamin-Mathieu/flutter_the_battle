import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_battle/models/Character.dart';

class CharacterPreview extends StatefulWidget {
  // Constructeur de la classe
  const CharacterPreview(
      {Key key, this.character, this.onSelected, this.visited})
      : super(key: key);

  final bool visited; // boolean pour savoir si le character a été cliqué

  final Character character; // récupération du character

  final Function
      onSelected; // function qui va permettre de reconnaître le character sélectionné

  @override
  _CharacterPreviewState createState() => _CharacterPreviewState();
}

class _CharacterPreviewState extends State<CharacterPreview> {
  _CharacterPreviewState();

  // Si un Character est cliqué la couleur change
  Color _getColorAccodingToSelected() {
    return (widget.visited) ? Colors.red[300] : Colors.red[400];
  }

  void _onTap() {
    this.widget.onSelected(this.widget.character);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        color: _getColorAccodingToSelected(),
        child: ListTile(
            onTap: () {
              _onTap();
            },
            leading: Padding(
              padding: EdgeInsets.all(10),
              child: Image(
                image: AssetImage(widget.character.imagePath()),
                width: 100,
              ),
            ),
            title: Text(widget.character.name,
                style: TextStyle(
                  fontFamily: 'Knewave',
                  fontSize: 20,
                  color: Colors.white,
                ))));
  }
}

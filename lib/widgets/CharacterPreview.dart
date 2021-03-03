import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_battle/models/Character.dart';

class CharacterPreview extends StatefulWidget {
  const CharacterPreview({Key key, this.character}) : super(key: key);
  final Character character;

  @override
  _CharacterPreviewState createState() => _CharacterPreviewState();
}

class _CharacterPreviewState extends State<CharacterPreview> {
  bool _selected = false;
  Color color;

  @override
  void initState() {
    super.initState();
    color = Colors.red[400];
  }

  Widget build(BuildContext context) {
    return Card(
        color: color,
        child: ListTile(
            onTap: () {
              setState(() {
                _selected = !_selected;
              });
              if (_selected) {
                color = Colors.green[400];
              } else {
                color = Colors.red[400];
              }
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

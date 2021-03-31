import 'package:the_battle/models/Character.dart';
import 'package:the_battle/models/Player.dart';
import 'package:the_battle/data/characters.dart' as staticData;
import 'dart:math' as math;

class Team {
  final String uuid;
  String name = "My Team";
  final Player player;
  List<Character> characters;

  var randomNumber = new math.Random();

  Team(this.uuid, this.name, this.player);
}

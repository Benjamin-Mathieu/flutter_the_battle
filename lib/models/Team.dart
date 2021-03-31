import 'package:the_battle/models/Character.dart';
import 'package:the_battle/models/Player.dart';
import 'package:the_battle/data/characters.dart' as staticData;
import 'dart:math';

class Team {
  final String uuid;
  bool validated = false;
  String name = "My Team";
  List<Character> characters;
  static const int maxCharactersNumber = 5;

  Team(this.uuid) {
    characters = [];
    characters.addAll(this.randomSelectedCharacters());
  }

  List<Character> randomSelectedCharacters() {
    List<Character> randomCharactersList = List.filled(2, null);

    Random random = new Random();

    int randomIndex1 = random.nextInt(staticData.characters.length);
    int randomIndex2 = random.nextInt(staticData.characters.length);

    Character character1 = staticData.characters[randomIndex1];
    Character character2 = staticData.characters[randomIndex2];

    if (randomIndex1 == randomIndex2) {
      randomIndex2 = randomIndex2 + 1;
      if (randomIndex2 > staticData.characters.length)
        randomIndex2 = randomIndex2 - 2;

      character2 = staticData.characters[randomIndex2];
    }

    character1.autoSelected = true;
    character1.selected = true;
    character2.autoSelected = true;
    character2.selected = true;

    randomCharactersList[0] = character1;
    randomCharactersList[1] = character2;

    return randomCharactersList;
  }

  int indexOf(Character theCharacter) {
    int searchedIndex = -1;

    if (this.characters.length > 0) {
      int index = 0;

      this.characters.forEach((Character aCharacter) {
        if (aCharacter.uuid == theCharacter.uuid) {
          searchedIndex = index;
        }
      });
    }
    return searchedIndex;
  }

  int count() {
    return this.characters.length;
  }

  bool add(Character theCharacter) {
    if (this.characters.length < Team.maxCharactersNumber &&
        (this.indexOf(theCharacter) == -1)) {
      this.characters.insert(0, theCharacter);
      theCharacter.selected = true;
      return true;
    }
  }
}

import 'package:munchkin/features/game/domain/entities/player.dart';

class Game {
  Game(
      {required this.maxLevel, required this.isAnarchy, required this.players});

  int maxLevel = 10;
  bool isAnarchy = true;
  List<Player> players;
}

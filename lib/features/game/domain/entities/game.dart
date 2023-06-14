import 'package:munchkin/features/game/domain/entities/player.dart';

class Game {
  Game(
      {required this.maxLevel, required this.isAnarchy, required this.players});

  final int maxLevel;
  final bool isAnarchy;
  final List<Player> players;
  Game copyWith({int? maxLevel, bool? isAnarchy, List<Player>? players}) {
    return Game(
        maxLevel: maxLevel ?? this.maxLevel,
        isAnarchy: isAnarchy ?? this.isAnarchy,
        players: players ?? this.players);
  }
}

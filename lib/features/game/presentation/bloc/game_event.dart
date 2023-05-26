part of 'game_bloc.dart';

@immutable
abstract class GameEvent {}

class CreateGame extends GameEvent {
  final int maxLevel;
  final bool isAnarchy;
  List<Player> players;

  CreateGame(this.maxLevel, this.isAnarchy, this.players);
}

class ChangeGameMaxLevel extends GameEvent {
  final int maxLevel;

  ChangeGameMaxLevel(this.maxLevel);
}

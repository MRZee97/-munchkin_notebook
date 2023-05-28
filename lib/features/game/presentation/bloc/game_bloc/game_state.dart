part of 'game_bloc.dart';

@immutable
abstract class GameState {}

class GameNotReady extends GameState {}

class GameCreated extends GameState {
  final Game game;

  GameCreated(this.game);
}

part of 'join_game_bloc.dart';

@immutable
abstract class JoinGameEvent {}

class JoinGame extends JoinGameEvent {
  final String pincode;

  JoinGame(this.pincode);
}

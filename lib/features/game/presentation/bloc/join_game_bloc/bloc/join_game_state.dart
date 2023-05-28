part of 'join_game_bloc.dart';

@immutable
abstract class JoinGameState {}

class NotPinMatch extends JoinGameState {}

class PinMatch extends JoinGameState {}

class Started extends JoinGameState {}

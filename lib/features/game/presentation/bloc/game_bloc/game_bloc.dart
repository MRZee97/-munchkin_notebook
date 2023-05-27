import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:munchkin/features/game/domain/entities/game.dart';
import 'package:munchkin/features/game/domain/entities/player.dart';

part 'game_event.dart';
part 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  Game? game;

  GameBloc() : super(GameNotReady()) {
    on<GameEvent>((event, emit) {
      if (event is CreateGame) {
        game = Game(
            maxLevel: event.maxLevel,
            isAnarchy: event.isAnarchy,
            players: event.players);
        emit(GameCreated(game!));
      }
      if (event is ChangeGameMaxLevel) {
        if (game != null) {
          game?.maxLevel = event.maxLevel;
          emit(GameCreated(game!));
        }
      }
      if (event is AddPlayer) {
        if (game != null) {
          game?.players.add(event.player);
          emit(GameCreated(game!));
        }
      }
    });
  }
}

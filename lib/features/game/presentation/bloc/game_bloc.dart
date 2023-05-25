import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
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
    });
  }
}

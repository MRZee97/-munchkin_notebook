import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'join_game_event.dart';
part 'join_game_state.dart';

class JoinGameBloc extends Bloc<JoinGameEvent, JoinGameState> {
  static const defaultPin = "1111";

  JoinGameBloc() : super(Started()) {
    on<JoinGameEvent>((event, emit) {
      if (event is JoinGame) {
        if (defaultPin == event.pincode) {
          emit(PinMatch());
        } else {
          emit(NotPinMatch());
        }
      }
    });
  }
}

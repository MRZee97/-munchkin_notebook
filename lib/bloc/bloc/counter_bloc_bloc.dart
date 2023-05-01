import 'dart:async';

enum CounterEvent { eventDecrement, eventIncrement }

class CounterBloc {
  int counter = 0;

// отсылаем событие в стрим через контролер который моделирует поток данных
  final inputEventController = StreamController<CounterEvent>();
  StreamSink<CounterEvent> get inputEventSink => inputEventController.sink;

// поток для передачи нового состояния
  final outputStateController = StreamController<int>();
  Stream<int> get outputStateStream => outputStateController.stream;

// метод преообразования событие в состояние
  void mapEventToState(CounterEvent event) {
    if (event == CounterEvent.eventDecrement)
      counter++;
    else if (event == CounterEvent.eventIncrement) counter--;

    outputStateController.sink.add(counter);
  }

// подписываемся на поток и обрабатываем событие
  CounterBloc() {
    inputEventController.stream.listen(mapEventToState);
  }

  void dispose() {
    inputEventController.close();
    outputStateController.close();
  }
}






  //Другой вариант который пока не придумал как подвизать
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// part 'counter_bloc_event.dart';
// part 'counter_bloc_state.dart';

// class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
//   CounterBlocBloc() : super(CounterBlocInitial()) {
//     on<CounterBlocEvent>((event, emit) {
//       if (event is DecrementEvent) {
//         event.level;
//         if (event.level < 1) {
//           emit(UpdatedCounter(event.level));
//         } else {
//           emit(UpdatedCounter(event.level + 1));
//         }
//       }
//       if (event is IncrementEvent) {
//         event.level;
//         if (event.level < 1) {
//           emit(UpdatedCounter(event.level));
//         } else {
//           emit(UpdatedCounter(event.level - 1));
//         }
//       }
//     });
//   }
// }

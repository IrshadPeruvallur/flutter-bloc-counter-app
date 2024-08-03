import 'package:bloc_counter_app/logic/counter_event.dart';
import 'package:bloc_counter_app/logic/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<AddCounterEvent>(
      (event, emit) {
        int newCount = state.count + 1;
        emit(CounterState(count: newCount));
      },
    );
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(initialState);

  // @override
  // int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    print(state);
    switch (event) {
      case CounterEvent.increment:
        var newState = state + 1;
        yield newState;
        break;
      case CounterEvent.decrement:
        var newState = state - 1;
        yield newState;
        break;
    }
  }
}

enum CounterEvent { increment, decrement }

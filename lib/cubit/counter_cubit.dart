import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  int counterA = 0;
  int counterB = 0;

  CounterCubit() : super(CounterInitial());
  void teamIncrement({required int counter, required String team}) {
    if (team == 'A') {
      counterA += counter;
      emit(TeamIncrementState());
    } else if (team == 'B') {
      counterB += counter;
      emit(TeamIncrementState());
    } else if (team == 'reset') {
      counterA = 0;
      counterB = 0;
      emit(TeamIncrementState());
    }
  }
}

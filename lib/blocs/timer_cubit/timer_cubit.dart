import 'package:bloc/bloc.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(TimerState(seconds: 60));

  void startTimer() => emit(TimerState(seconds: state.seconds - 1));
}

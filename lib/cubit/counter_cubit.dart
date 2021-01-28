import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void defaultIncrement() => emit(state + 1);
  void defaultDecrement() => emit(state - 1);

  void incrementWithWait() async {
    await Future.delayed(Duration(seconds: 3));
    emit(state + 1);
  }
}

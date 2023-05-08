// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:basketball_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int Team_A_counter = 0;

  int Team_B_counter = 0;

  void TeamXIncrement({required String team, required int IcrementNum}) {
    if (team == 'A') {
      Team_A_counter += IcrementNum;
      emit(CounterAIncrementState());
      //
    } else {
      Team_B_counter += IcrementNum;
      emit(CounterBIncrementState());
    }
  }
}

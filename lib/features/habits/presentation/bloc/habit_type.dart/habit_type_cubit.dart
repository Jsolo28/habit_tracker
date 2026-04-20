import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/core/constants/habit_type_data.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habit_type.dart/habit_type_state.dart';

class HabitTypeCubit extends Cubit<HabitType> {
  HabitTypeCubit() : super(habitTypes[0]);

  void changeHabitType(HabitType habitType) {
    emit(habitType);
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/core/usecases/usecase.dart';
import 'package:habit_tracker/dependency_injection.dart';
import 'package:habit_tracker/features/habits/domain/usecases/get_habits_usecase.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habits/habit_event.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habits/habit_state.dart';

class HabitBloc extends Bloc<HabitEvent, HabitState> {
  HabitBloc() : super(HabitLoading()) {
    on<LoadHabits>((event, emit) async {
      emit(HabitLoading());
      final result = await sl<GetHabitsUseCase>().call(NoParams());
      result.fold(
        (l) => emit(HabitFailure(errorMessage: l)),
        (r) => emit(HabitLoaded(habits: r)),
      );
    });
  }
}

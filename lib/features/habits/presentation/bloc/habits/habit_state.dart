import 'package:habit_tracker/features/habits/domain/entities/habit.dart';

abstract class HabitState {}

class HabitLoading extends HabitState {}

class HabitLoaded extends HabitState {
  final List<Habit> habits;
  HabitLoaded({required this.habits});
}

class HabitFailure extends HabitState {
  final String errorMessage;
  HabitFailure({required this.errorMessage});
}

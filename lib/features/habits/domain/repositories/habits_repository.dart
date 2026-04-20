import 'package:fpdart/fpdart.dart';
import 'package:habit_tracker/features/habits/domain/entities/habit.dart';

abstract interface class HabitsRepository {
  Future<Either<String, List<Habit>>> getHabits();
}

import 'package:fpdart/fpdart.dart';
import 'package:habit_tracker/features/habits/data/datasource/local_datasource.dart';
import 'package:habit_tracker/features/habits/domain/entities/habit.dart';
import 'package:habit_tracker/features/habits/domain/repositories/habits_repository.dart';

class HabitsRepositoryImpl implements HabitsRepository {
  final LocalDataSource localDataSource;
  HabitsRepositoryImpl(this.localDataSource);
  @override
  Future<Either<String, List<Habit>>> getHabits() {
    return localDataSource.getHabits();
  }
}

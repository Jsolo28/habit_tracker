import 'package:fpdart/fpdart.dart';
import 'package:habit_tracker/features/habits/data/models/habit_model.dart';
import 'package:habit_tracker/features/habits/domain/entities/habit.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract interface class LocalDataSource {
  Future<Either<String, List<Habit>>> getHabits();
}

class LocalDataSourceImpl implements LocalDataSource {
  final Box<HabitModel> box;
  LocalDataSourceImpl(this.box);
  @override
  Future<Either<String, List<Habit>>> getHabits() async {
    try {
      final List<Habit> habits = box.values.map((habitModel) => habitModel.toEntity()).toList();
      return Right(habits);
    } catch (e) {
      return Left(e.toString());
    }
  }
}

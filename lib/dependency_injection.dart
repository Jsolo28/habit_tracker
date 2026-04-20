import 'package:get_it/get_it.dart';
import 'package:habit_tracker/features/habits/data/datasource/local_datasource.dart';
import 'package:habit_tracker/features/habits/data/models/habit_model.dart';
import 'package:habit_tracker/features/habits/data/repositories/habits_repository.dart';
import 'package:habit_tracker/features/habits/domain/repositories/habits_repository.dart';
import 'package:habit_tracker/features/habits/domain/usecases/get_habits_usecase.dart';
import 'package:hive_flutter/hive_flutter.dart';

final GetIt sl = GetIt.instance;

Future<void> configureDependencies() async {
  await Hive.initFlutter();
  Hive.registerAdapter(HabitModelAdapter());
  final box = await Hive.openBox<HabitModel>("habits");
  sl
  ..registerSingleton<LocalDataSource>(LocalDataSourceImpl(box))
  ..registerSingleton<HabitsRepository>(HabitsRepositoryImpl(sl()))
  ..registerSingleton<GetHabitsUseCase>(GetHabitsUseCase(sl()));
}
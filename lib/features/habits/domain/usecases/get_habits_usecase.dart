import 'package:fpdart/fpdart.dart';
import 'package:habit_tracker/core/usecases/usecase.dart';
import 'package:habit_tracker/features/habits/domain/entities/habit.dart';
import 'package:habit_tracker/features/habits/domain/repositories/habits_repository.dart';

class GetHabitsUseCase extends UseCase<Either<String, List<Habit>>, NoParams> {
  final HabitsRepository habitsRepository;
  GetHabitsUseCase(this.habitsRepository);
  
  @override
  Future<Either<String, List<Habit>>> call(NoParams params) {
    return habitsRepository.getHabits();
  }
}

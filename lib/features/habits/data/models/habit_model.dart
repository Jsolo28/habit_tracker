import 'package:habit_tracker/features/habits/domain/entities/habit.dart';
import 'package:hive/hive.dart';

part 'habit_model.g.dart';

@HiveType(typeId: 0)
class HabitModel {
  @HiveField(0)
  String? name;
  @HiveField(1)
  bool? completed;
  @HiveField(2)
  int? color;
  @HiveField(3)
  int? icon;

  HabitModel({
    required this.name,
    required this.completed,
    required this.color,
    required this.icon,
  });

  HabitModel.fromJson(Map<dynamic, dynamic> data) {
    name = data["name"];
    completed = data["completed"];
    color = data["color"];
    icon = data["icon"];
  }

  HabitModel.fromEntity(Habit habit) {
    name = habit.name;
    completed = habit.completed;
    color = habit.color;
    icon = habit.icon;
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "completed": completed,
      "color": color,
      "icon": icon,
    };
  }

  Habit toEntity() {
    return Habit(
      name: name!,
      completed: completed!,
      color: color!,
      icon: icon!,
    );
  }
}

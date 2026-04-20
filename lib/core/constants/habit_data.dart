import 'package:flutter/material.dart';
import 'package:habit_tracker/features/habits/domain/entities/habit.dart';

final List<Habit> habits = [
  Habit(
    name: "Get Up Early",
    completed: false,
    color: Colors.blue.toARGB32(),
    icon: Icons.home.codePoint,
  ),
  Habit(
    name: "Workout",
    completed: false,
    color: Colors.green.toARGB32(),
    icon: Icons.run_circle_outlined.codePoint,
  ),
  Habit(
    name: "Clean Up",
    completed: false,
    color: Colors.yellow.toARGB32(),
    icon: Icons.delete.codePoint,
  ),
  Habit(
    name: "Self Care",
    completed: false,
    color: Colors.orange.toARGB32(),
    icon: Icons.clean_hands.codePoint,
  ),
  Habit(
    name: "Lock In",
    completed: false,
    color: Colors.purple.toARGB32(),
    icon: Icons.work.codePoint,
  ),
];

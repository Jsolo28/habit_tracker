import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habit_type.dart/habit_type_state.dart';

List<HabitType> habitTypes = [
  HabitType(
    name: "REGULAR",
    color: AppColors.blue,
    icon: Icon(Icons.loop),
    description:
        "Related to your daily routine. Check it in a regular repeated way. E.g. Do yoga three times a week",
  ),
  HabitType(
    name: "NEGATIVE",
    color: AppColors.red,
    icon: Icon(Icons.do_disturb),
    description:
        "Start each day as complete. Only to uncheck it when you fail. E.g. quit smoking & alcohol",
  ),
  HabitType(
    name: "ONE-TIME TODO",
    color: AppColors.lightBlue,
    icon: Icon(Icons.stay_current_portrait),
    description:
        "Remind you of important one-time events on a specific date you set. E.g. Take a medical test on Friday",
  ),
];

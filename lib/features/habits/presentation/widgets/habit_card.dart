import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';
import 'package:habit_tracker/features/habits/domain/entities/habit.dart';

class HabitCard extends StatelessWidget {
  final Habit habit;
  const HabitCard({super.key, required this.habit});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 26,
            height: 26,
            child: FittedBox(
              fit: BoxFit.fill,
              child: SizedBox(
                width: 18,
                height: 18,
                child: Checkbox(
                  shape: CircleBorder(),
                  value: habit.completed,
                  onChanged: (value) {},
                ),
              ),
            ),
          ),
          SizedBox(width: AppSpacing.lg),
          Expanded(
            child: Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: LinearGradient(
                  colors: [Color(habit.color).withAlpha(200), Color(habit.color)],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              child: Row(
                children: [
                  Icon(IconData(habit.icon, fontFamily: "MaterialIcons"), size: 32),
                  SizedBox(width: AppSpacing.lg),
                  Text(
                    habit.name,
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

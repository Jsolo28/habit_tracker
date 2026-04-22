import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';
import 'package:habit_tracker/features/habits/domain/entities/habit.dart';

class HabitPresetCard extends StatelessWidget {
  final Habit habit;
  const HabitPresetCard({super.key, required this.habit});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: AppColors.foreground,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            IconData(habit.icon, fontFamily: "MaterialIcons"),
            size: AppSpacing.lg2,
            color: Color(habit.color),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                habit.name,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: AppSpacing.sm),
              Text(
                "Description for this habit",
                style: TextStyle(
                  color: AppColors.secondaryText,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            width: AppSpacing.lg2,
            height: AppSpacing.lg2,
            decoration: BoxDecoration(
              color: AppColors.grey,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.arrow_forward, color: AppColors.foreground),
          ),
        ],
      ),
    );
  }
}

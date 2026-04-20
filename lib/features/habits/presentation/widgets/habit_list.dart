import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';
import 'package:habit_tracker/core/constants/habit_data.dart';
import 'package:habit_tracker/features/habits/presentation/widgets/habit_card.dart';

class HabitList extends StatelessWidget {
  const HabitList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: AppSpacing.lg),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "MORNING",
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SliverList.separated(
              separatorBuilder: (_, _) => SizedBox(height: AppSpacing.lg),
              itemCount: habits.length,
              itemBuilder: (context, index) {
                return HabitCard(habit: habits[index]);
              },
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: AppSpacing.lg),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "AFTERNOON",
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SliverList.separated(
              separatorBuilder: (_, _) => SizedBox(height: AppSpacing.lg),
              itemCount: habits.length,
              itemBuilder: (context, index) {
                return HabitCard(habit: habits[index]);
              },
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: AppSpacing.lg),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "EVENING",
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SliverList.separated(
              separatorBuilder: (_, _) => SizedBox(height: AppSpacing.lg),
              itemCount: habits.length,
              itemBuilder: (context, index) {
                return HabitCard(habit: habits[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

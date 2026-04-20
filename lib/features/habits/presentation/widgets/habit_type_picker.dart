import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';
import 'package:habit_tracker/core/constants/habit_type_data.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habit_type.dart/habit_type_cubit.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habit_type.dart/habit_type_state.dart';
import 'package:habit_tracker/features/habits/presentation/widgets/habit_type_card.dart';

class HabitTypePicker extends StatelessWidget {
  const HabitTypePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitTypeCubit, HabitType>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              spacing: AppSpacing.lg,
              children: [
                Expanded(child: HabitTypeCard(habitTypes[0])),
                Expanded(child: HabitTypeCard(habitTypes[1])),
                Expanded(child: HabitTypeCard(habitTypes[2])),
              ],
            ),
            SizedBox(height: AppSpacing.lg),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(AppSpacing.lg),
              decoration: BoxDecoration(
                color: AppColors.foreground,
                borderRadius: BorderRadius.circular(AppSpacing.md),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: AppSpacing.md),
                  Text(
                    state.description,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

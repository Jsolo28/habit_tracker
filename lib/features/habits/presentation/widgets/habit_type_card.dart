import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_size.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habit_type.dart/habit_type_cubit.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habit_type.dart/habit_type_state.dart';

class HabitTypeCard extends StatelessWidget {
  final HabitType habitType;
  const HabitTypeCard(this.habitType, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HabitTypeCubit, HabitType>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<HabitTypeCubit>().changeHabitType(habitType);
          },
          child: AspectRatio(
            aspectRatio: 1,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: state == habitType ? state.color : AppColors.foreground,
                borderRadius: BorderRadius.circular(AppSpacing.lg),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center - Alignment(0, 0.5),
                    child: habitType.icon,
                  ),
                  Align(
                    alignment: Alignment.center + Alignment(0, 0.5),
                    child: SizedBox(
                      width: 64,
                      child: Text(
                        habitType.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontWeight: FontWeight.bold,
                          fontSize: AppSize.textSm,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

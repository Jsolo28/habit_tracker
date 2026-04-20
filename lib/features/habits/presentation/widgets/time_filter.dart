import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';

class TimeFilter extends StatelessWidget {
  final String selectedTimeFilter;
  final void Function(String timeFilter) selectTimeFilter;
  const TimeFilter({
    super.key,
    required this.selectedTimeFilter,
    required this.selectTimeFilter,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: AppSpacing.lg, right: AppSpacing.lg),
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: AppSpacing.lg,
        children: ["ALL", "MORNING", "AFTERNOON", "EVENING"]
            .map(
              (timeFilter) => InkWell(
                onTap: () => selectTimeFilter(timeFilter),
                child: Chip(
                  label: Text(timeFilter),
                  backgroundColor: selectedTimeFilter == timeFilter
                      ? AppColors.primary
                      : AppColors.foreground,
                  padding: EdgeInsets.symmetric(
                    vertical: AppSpacing.md,
                    horizontal: AppSpacing.lg,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999),
                  ),
                  labelStyle: TextStyle(
                    color: selectedTimeFilter == timeFilter
                        ? AppColors.primaryText
                        : AppColors.secondaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

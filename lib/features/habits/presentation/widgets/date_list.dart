import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';

class DateList extends StatelessWidget {
  const DateList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.lg,
          ),
          child: Row(
            spacing: AppSpacing.md,
            children:
                [
                      ["SUN", 15],
                      ["MON", 16],
                      ["TUE", 17],
                      ["WED", 18],
                      ["THU", 19],
                      ["FRI", 20],
                      ["SAT", 21],
                    ]
                    .map(
                      (date) => dateItem(
                        date[0].toString(),
                        int.parse(date[1].toString()),
                      ),
                    )
                    .toList(),
          ),
        ),
      ),
    );
  }

  Widget dateItem(String dateLabel, int dateNumber) {
    const currentDate = 18;
    return Column(
      children: [
        Text(
          dateLabel,
          style: TextStyle(
            color: dateNumber == currentDate
                ? AppColors.primaryText
                : AppColors.secondaryText,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        SizedBox(height: AppSpacing.md),
        Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dateNumber < currentDate
                ? AppColors.primary
                : dateNumber == currentDate
                ? AppColors.foreground
                : AppColors.transparent,
          ),
          child: Text(
            dateNumber.toString(),
            style: TextStyle(
              color: dateNumber <= currentDate
                  ? AppColors.primaryText
                  : AppColors.secondaryText,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(height: AppSpacing.sm),
        Container(
          width: 24,
          height: 6,
          decoration: BoxDecoration(
            color: dateNumber == currentDate
                ? AppColors.primary
                : AppColors.transparent,
            borderRadius: BorderRadius.circular(999),
          ),
        ),
      ],
    );
  }
}

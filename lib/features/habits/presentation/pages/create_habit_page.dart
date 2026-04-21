import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_size.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';
import 'package:habit_tracker/core/constants/habit_data.dart';
import 'package:habit_tracker/features/habits/presentation/widgets/habit_type_picker.dart';

class CreateHabitPage extends StatefulWidget {
  const CreateHabitPage({super.key});

  @override
  State<CreateHabitPage> createState() => _CreateHabitPageState();
}

class _CreateHabitPageState extends State<CreateHabitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).viewPadding.top + AppSpacing.lg,
          left: AppSpacing.lg,
          right: AppSpacing.lg,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create a new habit",
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.textLg,
                ),
              ),
              SizedBox(height: AppSpacing.lg2),
              HabitTypePicker(),
              SizedBox(height: AppSpacing.lg),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: AppSpacing.lg),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: AppSpacing.sm),
                    Text(
                      "CREATE YOUR OWN",
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: AppSpacing.lg,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSpacing.lg2),
              Center(
                child: Text(
                  "OR CHOOSE FROM PRESETS",
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: habits.length,
                separatorBuilder: (_, _) => SizedBox(height: AppSpacing.lg),
                itemBuilder: (context, index) {
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
                          IconData(
                            habits[index].icon,
                            fontFamily: "MaterialIcons",
                          ),
                          size: AppSpacing.lg2,
                          color: Color(habits[index].color),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              habits[index].name,
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
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
                          child: Icon(
                            Icons.arrow_forward,
                            color: AppColors.foreground,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

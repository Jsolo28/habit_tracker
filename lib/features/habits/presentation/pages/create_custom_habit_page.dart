import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';
import 'package:habit_tracker/core/widgets/expandable_textfield.dart';

class CreateCustomHabitPage extends StatefulWidget {
  const CreateCustomHabitPage({super.key});

  @override
  State<CreateCustomHabitPage> createState() => _CreateCustomHabitPageState();
}

class _CreateCustomHabitPageState extends State<CreateCustomHabitPage> {
  final TextEditingController _habitNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: AppSpacing.lg + MediaQuery.of(context).viewPadding.top,
            bottom: AppSpacing.lg,
            left: AppSpacing.lg,
            right: AppSpacing.lg,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.close),
              SizedBox(height: AppSpacing.md),
              ExpandableTextField(
                hintText: "Habit name",
                controller: _habitNameController,
                hintStyle: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
                suffixIcon: Icons.edit,
                iconSize: AppSpacing.lg,
                iconColor: AppColors.secondaryText,
              ),
              SizedBox(height: AppSpacing.sm),
              Text("Regular habit", style: TextStyle(
                color: AppColors.secondaryText,
                fontWeight: FontWeight.bold,
                fontSize: AppSpacing.lg
              ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:habit_tracker/features/habits/presentation/widgets/custom_appbar.dart';
import 'package:habit_tracker/features/habits/presentation/widgets/date_list.dart';
import 'package:habit_tracker/features/habits/presentation/widgets/habit_list.dart';
import 'package:habit_tracker/features/habits/presentation/widgets/time_filter.dart';

class TodayPage extends StatefulWidget {
  const TodayPage({super.key});

  @override
  State<TodayPage> createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  String selectedTimeFilter = "ALL";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBar,
      appBar: CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          children: [
            DateList(),
            TimeFilter(
              selectedTimeFilter: selectedTimeFilter,
              selectTimeFilter: (timeFilter) =>
                  setState(() => selectedTimeFilter = timeFilter),
            ),
            HabitList(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

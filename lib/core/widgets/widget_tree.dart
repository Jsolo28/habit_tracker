import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/selected_page/selected_page_cubit.dart';
import 'package:habit_tracker/features/habits/presentation/pages/history_page.dart';
import 'package:habit_tracker/features/habits/presentation/pages/journey_page.dart';
import 'package:habit_tracker/features/habits/presentation/pages/profile_page.dart';
import 'package:habit_tracker/features/habits/presentation/pages/today_page.dart';

class WidgetTree extends StatelessWidget {
  final List<Widget> _pages = [
    TodayPage(),
    JourneyPage(),
    HistoryPage(),
    ProfilePage(),
  ];
  WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedPageCubit, int>(
      builder: (_, state) => _pages[state],
    );
  }
}

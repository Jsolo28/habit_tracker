import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habits/habit_bloc.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habits/habit_event.dart';

class JourneyPage extends StatefulWidget {
  const JourneyPage({super.key});

  @override
  State<JourneyPage> createState() => _JourneyPageState();
}

class _JourneyPageState extends State<JourneyPage> {
  @override
  void initState() {
    super.initState();
    context.read<HabitBloc>().add(LoadHabits());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("JourneyPage")),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

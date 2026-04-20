import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habit_type.dart/habit_type_cubit.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/habits/habit_bloc.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/selected_page/selected_page_cubit.dart';

class BlocProviders extends StatelessWidget {
  final Widget child;
  const BlocProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SelectedPageCubit()),
        BlocProvider(create: (_) => HabitBloc()),
        BlocProvider(create: (_) => HabitTypeCubit()),
      ],
      child: child,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/features/habits/presentation/bloc/selected_page/selected_page_cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedPageCubit, int>(
      builder: (context, state) => ColoredBox(
        color: AppColors.background,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          child: SizedBox(
            height: 84,
            child: BottomNavigationBar(
              backgroundColor: AppColors.foreground,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: AppColors.primaryText,
              unselectedItemColor: AppColors.secondaryText,
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              currentIndex: state,
              onTap: (int index) {
                context.read<SelectedPageCubit>().selectPage(index);
              },
              items: [
                BottomNavigationBarItem(
                  backgroundColor: AppColors.foreground,
                  icon: Icon(Icons.calendar_today),
                  label: "TODAY",
                ),
                BottomNavigationBarItem(
                  backgroundColor: AppColors.foreground,
                  icon: Icon(Icons.map),
                  label: "JOURNEY",
                ),
                BottomNavigationBarItem(
                  backgroundColor: AppColors.foreground,
                  icon: Icon(Icons.analytics),
                  label: "HISTORY",
                ),
                BottomNavigationBarItem(
                  backgroundColor: AppColors.foreground,
                  icon: Icon(Icons.person),
                  label: "ME",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

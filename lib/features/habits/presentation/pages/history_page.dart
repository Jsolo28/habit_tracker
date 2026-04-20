import 'package:flutter/material.dart';
import 'package:habit_tracker/core/widgets/custom_bottom_navigation_bar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("History"),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

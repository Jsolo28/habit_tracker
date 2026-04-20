import 'package:flutter/material.dart';
import 'package:habit_tracker/core/widgets/custom_bottom_navigation_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Me"),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

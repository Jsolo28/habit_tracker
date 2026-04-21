import 'package:flutter/material.dart';
import 'package:habit_tracker/dependency_injection.dart';
import 'package:habit_tracker/core/providers/bloc_providers.dart';
import 'package:habit_tracker/core/themes/theme.dart';
import 'package:habit_tracker/core/widgets/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProviders(
      child: MaterialApp(
        title: 'Habit Tracker',
        theme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}

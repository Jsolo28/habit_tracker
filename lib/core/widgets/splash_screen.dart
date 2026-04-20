import 'package:flutter/material.dart';
import 'package:habit_tracker/core/constants/app_colors.dart';
import 'package:habit_tracker/core/constants/app_spacing.dart';
import 'package:habit_tracker/core/widgets/widget_tree.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  double value = 0;
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 8),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animation.addListener(() {
      if (_animation.isCompleted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => WidgetTree()),
        );
      }
    });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: AppSpacing.lg3,
          horizontal: AppSpacing.lg,
        ),
        child: Column(
          children: [
            Text(
              "HABIT TRACKER & GOAL PLANNER",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.check_rounded, fontWeight: FontWeight.w900, size: 120),
            Spacer(),
            Row(
              children: [
                Expanded(child: Divider()),
                Spacer(),
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "Your ",
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "20",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: "th day in TICK IT"),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSpacing.md),
                    RichText(
                      text: TextSpan(
                        text: "0 ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            text: "habit finished in this week",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: AppSpacing.lg2),
            AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return LinearProgressIndicator(
                  color: AppColors.white,
                  backgroundColor: AppColors.foreground,
                  value: _animation.value,
                  borderRadius: BorderRadius.circular(999),
                  minHeight: 4,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

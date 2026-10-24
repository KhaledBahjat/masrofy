
import 'package:flutter/material.dart';
import 'package:masrofy/core/theme/app_colors.dart';

class AppScaffold extends StatelessWidget {
  const new({
    super.key,
    required this.isDark,
    required this.child
  });

  final bool isDark;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDark
                ? [
                    AppColors.backgroundDark,
                    AppColors.surfaceDark,
                    AppColors.backgroundDark,
                  ]
                : [
                    Color(0xffE7F5E9),
                    AppColors.backgroundLight,
                    AppColors.backgroundLight,
                  ],
          ),
        ),
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:masrofy/core/extensions/build_context.dart';
import 'package:masrofy/core/extensions/widget_extension.dart';
import 'package:masrofy/core/theme/app_colors.dart';
import 'package:masrofy/core/theme/app_sizes.dart';
import 'package:masrofy/core/widgets/app_scaffold.dart';
import 'package:masrofy/features/auth/view/widgets/app_logo.dart';
import 'package:masrofy/features/auth/view/widgets/auth_button.dart';

class AuthPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = context.isDarkMode;
    return AppScaffold(
      isDark: isDark,
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          AppLogo(),
          AppSizes.l.verticalSpace,
          Text(
            'مصروفي',
            style: context.textTheme.titleLarge!.copyWith(
              color: isDark ? AppColors.surfaceLight : AppColors.primary,
            ),
          ),
          AppSizes.l.verticalSpace,
          Text(
            'مرحبا بك مجددا في مصروفي',
            style: context.textTheme.titleSmall!.copyWith(
              color: isDark ? AppColors.surfaceLight : AppColors.primary,
            ),
          ),
          AppSizes.l.verticalSpace,
          Text(
            'أدر مصروفاتك وديونك واهدافك الماليه في مكان واحد',
            style: context.textTheme.titleSmall!.copyWith(
              color: isDark ? AppColors.surfaceLight : AppColors.primary,
            ),
          ),
          AppSizes.l.verticalSpace,
          AuthButton().paddingHorizontal(AppSizes.s),
          Spacer(),
        ],
      ),
    );
  }
}

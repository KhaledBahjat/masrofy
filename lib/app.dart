import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart' as appTitle;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:masrofy/core/routing/app_routs.dart';
import 'package:masrofy/core/routing/routs.dart';
import 'package:masrofy/core/theme/app_sizes.dart';
import 'package:masrofy/core/theme/app_theme.dart';
import 'package:masrofy/core/widgets/custom_button.dart';

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: appRouter,
          locale: context.locale,
          supportedLocales: context.supportedLocales,
          localizationsDelegates: context.localizationDelegates,
          debugShowCheckedModeBanner: false,
          title: 'مصروفي',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: ThemeMode.dark,
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appTitle".tr()),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.language))],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'description'.tr(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: AppSizes.xl),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomButton(
                text: "changeLanguage".tr(),
                onPressed: () {
                  context.setLocale(
                    context.locale.languageCode == 'en'
                        ? Locale('ar')
                        : Locale('en'),
                  );
                },
                variant: ButtonVariant.outlined,
              ),
            ),

            SizedBox(height: AppSizes.xl),
            CustomButton(
              text: 'Go To Setting',
              onPressed: () {
                context.go(AppRouts.settings);
              },
              variant: ButtonVariant.primary,
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}

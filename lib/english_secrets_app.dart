import 'package:english_secrets/core/routing/app_router.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/theming/app_themes/thme_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnglishSecretsApp extends StatelessWidget {
  final AppRouter appRouter;

  const EnglishSecretsApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: AppString.englishSecrets,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.loginScreen,
        onGenerateRoute: appRouter.generateRoute,
        theme: themeLight,
        // darkTheme: themeDark,
      ),
    );
  }
}

import 'package:english_secrets/core/di/get_it.dart';
import 'package:english_secrets/core/routing/app_router.dart';
import 'package:english_secrets/english_secrets_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp(EnglishSecretsApp(appRouter: AppRouter()));
}

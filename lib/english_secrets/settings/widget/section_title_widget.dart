import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;

  const SectionTitleWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: AppColors.light,
        fontSize: 14.sp
      ),
    );
  }
}

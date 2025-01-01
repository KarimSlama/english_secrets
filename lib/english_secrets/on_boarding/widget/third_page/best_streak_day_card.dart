import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestStreakDayCard extends StatelessWidget {
  const BestStreakDayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return    PositionedDirectional(
      top: 100.h,
      start: 90.w,
      child: Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppString.bestStreakDay,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.light,
              ),
            ),
            Text(
              '22',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.dark,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

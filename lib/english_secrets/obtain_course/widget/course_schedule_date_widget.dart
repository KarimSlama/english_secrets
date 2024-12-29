import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseScheduleDateWidget extends StatelessWidget {
  const CourseScheduleDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 14.w,
      children: [
        SvgPicture.asset(Assets.icons.schdule),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.firstSessionStartWith,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.light, fontSize: 16.sp),
            ),
            Text(
              'Wednesday, 5 Jan 2025, 21:00',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}

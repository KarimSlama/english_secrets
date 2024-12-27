import 'package:english_secrets/core/helpers/separator.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeadlineWidget extends StatelessWidget {
  final String headline;

  const HeadlineWidget({super.key, required this.headline});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      children: [
        widthLine(),
        Text(
          headline,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.blue,
              fontSize: 17.sp,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

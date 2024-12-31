import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseEnrolledWidget extends StatelessWidget {
  const CourseEnrolledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(
            image: AssetImage(Assets.images.course.path),
            width: 190.w,
            height: 110.h,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'OET – Occupational English Test',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Text(
          'Instructor Heba Zaher',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.light,
              ),
        ),
      ],
    );
  }
}

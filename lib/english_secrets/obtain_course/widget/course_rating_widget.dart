import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseRatingWidget extends StatelessWidget {
  const CourseRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.w,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image(
            image: AssetImage(Assets.images.course.path),
            width: 60.w,
            height: 60.h,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Column(
            spacing: 5.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    AppString.rating,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.light,
                        ),
                  ),
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        size: 14,
                        color: index < 4 ? AppColors.amber : AppColors.light,
                      );
                    }),
                  ),
                  Text(
                    '4.5',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.light,
                        ),
                  ),
                ],
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
          ),
        ),
      ],
    );
  }
}

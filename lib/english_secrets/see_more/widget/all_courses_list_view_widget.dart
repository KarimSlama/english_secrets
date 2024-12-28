import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class AllCoursesListViewWidget extends StatelessWidget {
  const AllCoursesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 14),
      child: GestureDetector(
        onTap: () {
          context.pushNamed(Routes.courseDetailsScreen);
        },
        child: Material(
          elevation: 5,
          borderRadius: BorderRadiusDirectional.circular(12),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 10, vertical: 4),
            child: Column(
              spacing: 10.h,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: NetworkImage(
                      'https://img.freepik.com/free-photo/student-class-looking-course_23-2148888810.jpg?uid=R50433035&ga=GA1.1.1043572054.1723626862&semt=ais_hybrid',
                    ),
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150.h,
                  ),
                ),
                Row(
                  children: [
                    SelectableText(
                      'Ielts Course',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 18.sp),
                    ),
                    Spacer(),
                    SelectableText(
                      '4000 EGP',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 18.sp),
                    ),
                  ],
                ),
                Row(
                  spacing: 10.w,
                  children: [
                    Icon(
                      IconBroken.Time_Circle,
                      color: AppColors.light,
                      size: 25,
                    ),
                    Text(
                      '30 H',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.light),
                    ),
                    Spacer(),
                    Icon(
                      IconBroken.User,
                      color: AppColors.light,
                    ),
                    Text(
                      '700',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.light),
                    ),
                    Spacer(),
                    Icon(
                      IconBroken.Star,
                      color: AppColors.amber,
                      size: 25,
                    ),
                    Text(
                      '4.9',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.light),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class GridViewCourseItemWidget extends StatelessWidget {
  const GridViewCourseItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.courseDetailsScreen);
      },
      child: Material(
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(20),
          bottomEnd: Radius.circular(20),
        ),
        color: AppColors.white,
        elevation: 3,
        child: Column(
          spacing: 10.h,
          children: [
            Container(
              height: 160.h,
              decoration: BoxDecoration(
                borderRadius: const BorderRadiusDirectional.only(
                  topStart: Radius.circular(20),
                  bottomEnd: Radius.circular(20),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/student-class-looking-course_23-2148888810.jpg?uid=R50433035&ga=GA1.1.1043572054.1723626862&semt=ais_hybrid'),
                ),
              ),
            ),
            Text(
              overflow: TextOverflow.ellipsis,
              'Ielts Course',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 17.sp, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(
                    IconBroken.User,
                    color: AppColors.light,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    '700',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.light),
                  ),
                  Spacer(),
                  Icon(
                    IconBroken.Star,
                    color: AppColors.amber,
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    '4.9',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.light),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

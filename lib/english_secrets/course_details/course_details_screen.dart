import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/course_details/widget/course_include_widget.dart';
import 'package:english_secrets/english_secrets/course_details/widget/num_of_users_and_feedback_widget.dart';
import 'package:english_secrets/english_secrets/course_details/widget/obtain_the_course_and_price_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(IconBroken.Arrow___Left_2),
              color: AppColors.white,
            ),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "OET - Occupational English Test",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.white,
                      fontSize: 16.sp,
                    ),
              ),
              background: Container(
                height: 160.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Assets.images.course.path),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    spacing: 15.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NumOfUsersAndFeedbackWidget(),
                      Text(
                        "This course will give you an insight into the OET Reading sub-test and will guide you through it step-by-step. Each sub-section is worked on individually, with parts A, B, and C looked at in turn.",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 16.sp,
                              color: AppColors.light,
                            ),
                      ),
                      Text(
                        AppString.requirements,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 18.sp, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '1. Have a level of A2 English',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 16.sp,
                              color: AppColors.light,
                            ),
                      ),
                      CourseIncludeWidget(),
                      ObtainTheCourseAndPriceWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

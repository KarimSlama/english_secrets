import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/course_details/widget/resources_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class CourseIncludeWidget extends StatelessWidget {
  const CourseIncludeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        Text(
          AppString.theCourseIncludes,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        ResourcesWidget(icon: IconBroken.Video, text: '30 Hours Video'),
        ResourcesWidget(icon: IconBroken.Document, text: 'Total 30 Lessons'),
        ResourcesWidget(icon: IconBroken.Paper, text: '20 Download Resources')
      ],
    );
  }
}

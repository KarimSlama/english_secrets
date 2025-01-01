import 'package:english_secrets/core/helpers/spacing.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/core/widgets/course_schedule_date_widget.dart';
import 'package:english_secrets/english_secrets/obtain_course/widget/course_rating_widget.dart';
import 'package:english_secrets/english_secrets/obtain_course/widget/payment_method_widget.dart';
import 'package:english_secrets/english_secrets/obtain_course/widget/total_payment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ObtainCourseScreen extends StatelessWidget {
  const ObtainCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: AppString.payment,
      ),
      body: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 16),
        child: Column(
          spacing: 10.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CourseRatingWidget(),
            verticalSpace(30),
            Text(
              AppString.scheduleDate,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            CourseScheduleDateWidget(),
            verticalSpace(25),
            Text(
              AppString.selectPaymentMethod,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            PaymentMethodWidget(),
            verticalSpace(15),
            TotalPaymentWidget(),
          ],
        ),
      ),
    );
  }
}

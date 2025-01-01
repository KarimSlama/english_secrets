import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/obtain_course/widget/pay_course_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalPaymentWidget extends StatelessWidget {
  const TotalPaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 14.h,
      children: [
        Text(
          AppString.totalPayment,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
        ),
        Row(
          children: [
            Text(
              AppString.consultationFee,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.light, fontSize: 16.sp),
            ),
            Spacer(),
            Text(
              '3,000 EGP',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              AppString.admin,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: AppColors.light, fontSize: 16.sp),
            ),
            Spacer(),
            Text(
              AppString.free,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ],
        ),
        Row(
          children: [
            Column(
              spacing: 7.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.total,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: AppColors.light, fontSize: 16.sp),
                ),
                Text(
                  'EGP 3,000',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ],
            ),
            Spacer(),
            PayCourseButton(),
          ],
        ),
      ],
    );
  }
}

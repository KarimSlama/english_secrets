import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactUsHeader extends StatelessWidget {
  const ContactUsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 16),
      width: double.infinity,
      height: 120.h,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius:
            BorderRadiusDirectional.vertical(bottom: Radius.circular(60)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.contactUs,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700),
          ),
          Text(
            AppString
                .ifYouHaveAnyInquiresGetInTouchWithUsWeWillBeHappyToHelpYou,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.white,
                ),
          ),
        ],
      ),
    );
  }
}

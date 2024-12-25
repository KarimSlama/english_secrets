import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditions extends StatelessWidget {
  final Animation<Offset> textSlideAnimation;

  const TermsAndConditions({super.key, required this.textSlideAnimation});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: textSlideAnimation,
      child: Text(
        textAlign: TextAlign.center,
        AppString.byContinuingYouAgreeTermsOfServicesPrivacyPolicy,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: AppColors.lightBlue, fontSize: 11.sp),
      ),
    );
  }
}

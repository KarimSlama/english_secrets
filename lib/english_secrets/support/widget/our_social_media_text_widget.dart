import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurSocialMediaTextWidget extends StatelessWidget {
  const OurSocialMediaTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 14),
      child: Text(
        AppString.ourSocialMedia,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}

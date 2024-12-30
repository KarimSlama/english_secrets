import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaPlatform extends StatelessWidget {
  final String icon;
  final String platformName;
  final VoidCallback onTapped;

  const SocialMediaPlatform(
      {super.key,
      required this.icon,
      required this.platformName,
      required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapped();
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 7, horizontal: 14),
        child: Material(
          color: AppColors.white,
          elevation: 1,
          borderRadius: BorderRadiusDirectional.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              spacing: 14.w,
              children: [
                SvgPicture.asset(
                  icon,
                  width: 30.w,
                ),
                Text(platformName)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

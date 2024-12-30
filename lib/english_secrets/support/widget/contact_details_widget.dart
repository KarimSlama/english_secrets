import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactDetailsWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;
  final Color color;

  const ContactDetailsWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 10),
        width: double.infinity,
        height: 95.h,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadiusDirectional.circular(40),
        ),
        child: Row(
          spacing: 12.w,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.dark.withValues(alpha: .2),
              child: SvgPicture.asset(icon, width: 24),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    subTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.white,
                          fontSize: 13.sp,
                        ),
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

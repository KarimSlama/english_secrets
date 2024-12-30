import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CardWithDataWidget extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;

  const CardWithDataWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10.h,
          children: [
            Lottie.asset(icon, width: 150, height: 150),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.light,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

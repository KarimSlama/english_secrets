import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.hello,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.light,
                  ),
            ),
            Text(
              'Karim Slama 👋',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Assets.images.user2.image(),
          ),
        ),
      ],
    );
  }
}

import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16.h,
        children: [
          AppBarWidget(title: AppString.notification),
          Text(
            'Toady, Dec 31, 2024',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.light),
          ),
          Row(
            spacing: 12.w,
            children: [
              Icon(IconBroken.Info_Circle),
              Expanded(
                child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    'Be aware of the next Round of our Ielts preparation course'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

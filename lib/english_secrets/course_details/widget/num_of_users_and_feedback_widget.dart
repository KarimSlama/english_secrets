import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

class NumOfUsersAndFeedbackWidget extends StatelessWidget {
  const NumOfUsersAndFeedbackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsetsDirectional.all(10),
          child: Text(
            AppString.bestSeller,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.white,
                ),
          ),
        ),
        Spacer(),
        Icon(
          IconBroken.User,
          color: AppColors.light,
        ),
        Text(
          '700',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.light,
              ),
        ),
        Spacer(),
        Icon(
          IconBroken.Star,
          color: AppColors.amber,
        ),
        Text(
          '4.9',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.light,
              ),
        ),
      ],
    );
  }
}

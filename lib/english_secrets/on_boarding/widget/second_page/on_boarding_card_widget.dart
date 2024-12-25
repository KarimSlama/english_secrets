import 'package:english_secrets/core/helpers/separator.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingCardWidget extends StatelessWidget {
  final bool isTitleFound;
  final String? cardName;
  final String missionTitle;
  final String missionDuration;

  const OnBoardingCardWidget({
    super.key,
    this.cardName,
    required this.missionTitle,
    required this.missionDuration,
    this.isTitleFound = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        !isTitleFound
            ? Container()
            : Text(
                cardName ?? AppString.challenges,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: AppColors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
              ),
        Container(
          padding: const EdgeInsets.all(13),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    missionTitle,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.dark,
                        ),
                  ),
                  const Spacer(),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        child: Assets.images.user.image(),
                      ),
                      Positioned(
                        right: -10,
                        child: CircleAvatar(
                          radius: 14,
                          child: Assets.images.user2.image(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                spacing: 7.w,
                children: [
                  SvgPicture.asset(Assets.icons.time),
                  Text(
                    missionDuration,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.light, fontSize: 14.sp),
                  ),
                  const Spacer(),
                  Text(
                    AppString.twoFriendsJoined,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.light, fontSize: 13.sp),
                  ),
                ],
              ),
              heightLine(),
            ],
          ),
        ),
      ],
    );
  }
}

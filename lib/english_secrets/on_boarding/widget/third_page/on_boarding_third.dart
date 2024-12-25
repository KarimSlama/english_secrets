import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/title_and_sub_title.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/third_page/best_streak_day_card.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/third_page/build_user_image.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingThird extends StatelessWidget {
  final Animation<Offset> textSlideAnimation;

  const OnBoardingThird({super.key, required this.textSlideAnimation});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 40.h,
      children: [
        Stack(
          children: [
            Row(
              spacing: 14.w,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BuildUserImage(
                  topImageOffset: 100,
                  isTop: false,
                  image: Assets.images.user2.image(),
                ),
                BuildUserImage(
                  topImageOffset: -100,
                  isTop: true,
                  image: Assets.images.user3.image(),
                ),
                BuildUserImage(
                  topImageOffset: 100,
                  isTop: false,
                  image: Assets.images.user4.image(),
                ),
                BuildUserImage(
                  topImageOffset: -100,
                  isTop: true,
                  image: Assets.images.user.image(),
                ),
              ],
            ),
            BestStreakDayCard(),
          ],
        ),
        TitlesAndSubTitles(
          textSlideAnimation: textSlideAnimation,
          text: AppString.stayTogetherAndStrong,
          subText: AppString
              .findFriendsToDiscussCommonTopicsCompleteChallengesTogether,
        ),
      ],
    );
  }
}

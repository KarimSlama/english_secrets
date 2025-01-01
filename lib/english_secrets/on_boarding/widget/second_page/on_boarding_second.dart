import 'package:english_secrets/core/helpers/spacing.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/second_page/animated_card_widget.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/second_page/on_boarding_card_widget.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/title_and_sub_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingSecond extends StatelessWidget {
  final Animation<Offset> textSlideAnimation;
  final Animation<double> fadeAnimation;
  final Animation<double> scaleAnimation;

  const OnBoardingSecond({
    super.key,
    required this.textSlideAnimation,
    required this.fadeAnimation,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 26),
      child: FadeTransition(
        opacity: fadeAnimation,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Column(
            spacing: 4.h,
            children: [
              AnimatedCard(
                delay: 0.5,
                child: OnBoardingCardWidget(
                  isTitleFound: true,
                  cardName: AppString.challenges,
                  missionDuration: AppString.fiveDaysHoursLeft,
                  missionTitle: AppString.ieltsTestPreparation,
                ),
              ),

              AnimatedCard(
                delay: 1.0,
                child: OnBoardingCardWidget(
                  isTitleFound: true,
                  cardName: AppString.habits,
                  missionDuration: AppString.tenFromHundred,
                  missionTitle: AppString.newVocabLearning,
                ),
              ),

              AnimatedCard(
                delay: 1.5,
                child: OnBoardingCardWidget(
                  isTitleFound: false,
                  missionDuration: AppString.fiveDaysHoursLeft,
                  missionTitle: AppString.newCourseLearning,
                ),
              ),
              AnimatedCard(
                delay: 1.8,
                child: OnBoardingCardWidget(
                  isTitleFound: false,
                  missionDuration: AppString.tenFromHundred,
                  missionTitle: AppString.achieveFluency,
                ),
              ),
              verticalSpace(4),
              SlideTransition(
                position: textSlideAnimation,
                child: TitlesAndSubTitles(
                  textSlideAnimation: textSlideAnimation,
                  text: AppString.trackYourProgress,
                  subText: AppString
                      .everydayYouBecomeOneStepCloserToYourGoalDontGiveUp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

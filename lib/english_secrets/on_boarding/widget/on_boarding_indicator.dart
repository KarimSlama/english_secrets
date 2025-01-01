import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicator extends StatelessWidget {
  final PageController pageController;

  const OnBoardingIndicator({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: ScrollingDotsEffect(
        dotWidth: 9,
        dotHeight: 9,
        spacing: 5,
        dotColor: AppColors.silver,
        activeDotColor: AppColors.grey,
      ),
    );
  }
}

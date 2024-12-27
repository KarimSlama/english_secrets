import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  final PageController pageController;

  const SmoothPageIndicatorWidget({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 5,
      effect: ExpandingDotsEffect(
        dotWidth: 9,
        dotHeight: 9,
        spacing: 5,
        dotColor: AppColors.light,
        activeDotColor: AppColors.amber,
      ),
    );
  }
}

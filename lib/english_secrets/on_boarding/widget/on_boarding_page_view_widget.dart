import 'package:english_secrets/english_secrets/on_boarding/data/model/image_data_list_model.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/first_page/on_boarding_first.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/second_page/on_boarding_second.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/third_page/on_boarding_third.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  final PageController pageController;
  final AnimationController controller;
  final Animation<double> boxVerticalAnimation;
  final Animation<Offset> textSlideAnimation;
  final Animation<Offset> imageSlideAnimation;
  final Animation<double> fadeAnimation;
  final Animation<double> scaleAnimation;

  const OnBoardingPageView({
    super.key,
    required this.pageController,
    required this.controller,
    required this.boxVerticalAnimation,
    required this.textSlideAnimation,
    required this.imageSlideAnimation,
    required this.fadeAnimation,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: 3,
      onPageChanged: (value) => onPageChanged(value),
      itemBuilder: (context, index) {
        if (index == 0) {
          return OnBoardingFirst(
            image: imageData,
            controller: controller,
            boxVerticalAnimation: boxVerticalAnimation,
            textSlideAnimation: textSlideAnimation,
            imageSlideAnimation: imageSlideAnimation,
          );
        } else if (index == 1) {
          return OnBoardingSecond(
            textSlideAnimation: textSlideAnimation,
            fadeAnimation: fadeAnimation,
            scaleAnimation: scaleAnimation,
          );
        } else {
          return OnBoardingThird(
            textSlideAnimation: textSlideAnimation,
          );
        }
      },
    );
  }
  void onPageChanged(int index) {
    controller.reset();
    controller.forward();
  }
}

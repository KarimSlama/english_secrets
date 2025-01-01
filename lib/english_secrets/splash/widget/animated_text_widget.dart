import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 100.h,
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: AppColors.white,
            ),
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              AppString.welcomeToEnglishSecrets,
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              AppString.learnEnglishLikeNeverBefore,
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              AppString.makeYourDreamsComeTrue,
              speed: const Duration(milliseconds: 100),
            ),
          ],
          totalRepeatCount: 1,
          onFinished: () {
            context.pushNamed(Routes.onBoardingScreen);
          },
        ),
      ),
    );
  }
}

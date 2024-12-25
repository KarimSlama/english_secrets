import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitlesAndSubTitles extends StatelessWidget {
  final Animation<Offset> textSlideAnimation;
  final String text;
  final String subText;

  const TitlesAndSubTitles({
    super.key,
    required this.textSlideAnimation,
    required this.text,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideTransition(
          position: textSlideAnimation,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 32.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        SlideTransition(
          position: textSlideAnimation,
          child: Text(
            subText,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.ofWeight,
                ),
          ),
        ),
      ],
    );
  }
}

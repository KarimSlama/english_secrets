import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_broken/icon_broken.dart';

class TestimonialCardWidget extends StatelessWidget {
  final String image;
  final String name;
  final String feedback;
  final int rate;

  const TestimonialCardWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.feedback,
      required this.rate});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 7),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.white,
            elevation: 3,
            child: Padding(
              padding: EdgeInsetsDirectional.all(10),
              child: Row(
                spacing: 12.w,
                children: [
                  CircleAvatar(
                    radius: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(image),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 7.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 5.w,
                          children: [
                            Text('$rate'),
                            Icon(
                              IconBroken.Star,
                              size: 20,
                              color: AppColors.amber,
                            ),
                          ],
                        ),
                        Text(
                          name,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          feedback,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: AppColors.light, fontSize: 14.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SvgPicture.asset(Assets.icons.quote),
      ],
    );
  }
}

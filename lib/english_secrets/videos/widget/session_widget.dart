import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SessionWidget extends StatelessWidget {
  const SessionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 10),
        child: Row(
          spacing: 10.w,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: AssetImage(Assets.images.course.path),
                width: 60.w,
                height: 60.h,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                spacing: 5.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Session 1',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  Text(
                    'The way to introduce yourself professionally',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.light,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Text('16:21'),
          ],
        ),
      ),
    );
  }
}

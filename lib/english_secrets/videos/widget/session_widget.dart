import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
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
              child: Image.network(
                'https://img.freepik.com/free-photo/student-class-looking-course_23-2148888810.jpg?uid=R50433035&ga=GA1.1.1043572054.1723626862&semt=ais_hybrid',
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

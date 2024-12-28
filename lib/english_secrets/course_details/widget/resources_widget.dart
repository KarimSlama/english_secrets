import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResourcesWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const ResourcesWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15.w,
      children: [
        Container(
          padding: EdgeInsetsDirectional.all(16),
          decoration: BoxDecoration(
              color: AppColors.blue, borderRadius: BorderRadius.circular(14)),
          child: Icon(
            icon,
            color: AppColors.white,
          ),
        ),
        Text(text),
      ],
    );
  }
}

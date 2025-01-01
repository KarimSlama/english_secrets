import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget heightSeparator() => Container(
      width: double.infinity,
      height: 1,
      color: AppColors.grey,
    );

Widget widthSeparator() => Container(
      width: 1,
      height: double.infinity,
      color: AppColors.grey,
    );

Widget heightLine() => Container(
      width: 80.w,
      height: 4.h,
      decoration: BoxDecoration(
          color: AppColors.blue, borderRadius: BorderRadius.circular(50)),
    );

Widget widthLine() => Container(
      width: 2.w,
      height: 30.h,
      decoration: BoxDecoration(
          color: AppColors.blue, borderRadius: BorderRadius.circular(50)),
    );

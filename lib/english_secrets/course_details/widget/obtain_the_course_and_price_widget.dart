import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/button_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ObtainTheCourseAndPriceWidget extends StatelessWidget {
  const ObtainTheCourseAndPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      spacing: 10.w,
      children: [
        ButtonWidget(
          onBackPressed: () {
            context.pushNamed(Routes.obtainCourseScreen);
          },
          width: 160.w,
          btnText: AppString.obtainTheCourse,
        ),
        SvgPicture.asset(Assets.icons.work, width: 30.w),
        Text('3,000 EGp'),
      ],
    );
  }
}

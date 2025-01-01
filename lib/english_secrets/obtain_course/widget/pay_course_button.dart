import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PayCourseButton extends StatelessWidget {
  const PayCourseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
        onBackPressed: () {
          context.pushNamed(Routes.enrollmentSuccessScreen);
        },
        btnText: AppString.pay,
        width: 160.w);
  }
}

import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/button_widget.dart';
import 'package:english_secrets/core/widgets/course_schedule_date_widget.dart';
import 'package:english_secrets/english_secrets/enrollment_success/widget/course_enrolled_widget.dart';
import 'package:english_secrets/english_secrets/obtain_course/widget/check_celebrating_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnrollmentSuccessScreen extends StatelessWidget {
  const EnrollmentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
                child: Column(
                  spacing: 22.h,
                  children: [
                    const CheckCelebratingAnimationWidget(),
                    Text(
                      AppString.youHaveSuccessfullyEnrollInThisCourse,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      AppString.theEnrollmentConfirmationHasBeenSendToYourEmail,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.light,
                          ),
                    ),
                    const CourseEnrolledWidget(),
                    const CourseScheduleDateWidget(),
                    ButtonWidget(
                      onBackPressed: () {
                        context.pushNamed(Routes.dashboardScreen);
                      },
                      btnText: AppString.backToHome,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

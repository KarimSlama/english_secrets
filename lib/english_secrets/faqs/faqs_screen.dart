import 'package:english_secrets/core/helpers/separator.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: AppString.faqs),
      body: ListView.separated(
        itemCount: 12,
        separatorBuilder: (context, index) => heightSeparator(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 5.0,
            shadowColor: AppColors.dark,
            borderRadius: BorderRadiusDirectional.circular(12.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
              child: Column(
                spacing: 10.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText('Dummy Text ? ',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          )),
                  Text(
                      'dummy answer dummy answer dummy answerdummy answer dummy answer dummy answer dummy answer dummy answer dummy answer dummy answer ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.light)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

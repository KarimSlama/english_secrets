import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onBackPressed;
  final String btnText;

  const ButtonWidget(
      {super.key, required this.onBackPressed, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onBackPressed();
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.blue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 55.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      child: Text(
        btnText,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}

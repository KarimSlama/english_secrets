import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  final Function? onPressed;
  final String btnText;

  const ButtonWidget({super.key, this.onPressed, required this.btnText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed != null ? () => onPressed!() : null;
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

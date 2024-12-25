import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContinueWithEmail extends StatelessWidget {
  const ContinueWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 20),
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.white),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 55.h)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            SvgPicture.asset(Assets.icons.login),
            Text(
              AppString.continueWithEmail,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.dark,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

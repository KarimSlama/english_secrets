import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

class CustomAppBarLeadingWidget extends StatelessWidget {
  const CustomAppBarLeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadiusDirectional.circular(20)),
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(
          IconBroken.Arrow___Left_2,
          color: AppColors.blue,
        ),
      ),
    );
  }
}

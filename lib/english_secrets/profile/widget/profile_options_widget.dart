import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_broken/icon_broken.dart';

class ProfileOptionsWidget extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTapped;
  final bool isLogout;

  const ProfileOptionsWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTapped,
      this.isLogout = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
      child: Row(
        spacing: 12.w,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon),
          Text(
            title,
            style: TextStyle(color: isLogout ? Colors.red : AppColors.dark),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              onTapped();
            },
            icon: Icon(IconBroken.Arrow___Right_2),
          ),
        ],
      ),
    );
  }
}

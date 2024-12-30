import 'package:english_secrets/core/helpers/spacing.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/english_secrets/profile/widget/profile_options_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      children: [
        AppBarWidget(title: AppString.profile),
        verticalSpace(10),
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 80,
              child: Assets.images.user2.image(),
            ),
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: AppColors.grey,
                child: Icon(
                  IconBroken.Edit,
                ),
              ),
            ),
          ],
        ),
        Text(
          'Karim Slama',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
              ),
        ),
        verticalSpace(1),
        ProfileOptionsWidget(
          icon: Assets.icons.editSquare,
          title: AppString.editProfile,
          onTapped: () {},
        ),
        ProfileOptionsWidget(
          icon: Assets.icons.wallet,
          title: AppString.paymentMethods,
          onTapped: () {},
        ),
        ProfileOptionsWidget(
          icon: Assets.icons.setting,
          title: AppString.settings,
          onTapped: () {},
        ),
        ProfileOptionsWidget(
          icon: Assets.icons.notification,
          title: AppString.learningReminder,
          onTapped: () {},
        ),
        ProfileOptionsWidget(
          icon: Assets.icons.document,
          title: AppString.testMarks,
          onTapped: () {},
        ),
        ProfileOptionsWidget(
          icon: Assets.icons.logout,
          title: AppString.logout,
          isLogout: true,
          onTapped: () {},
        ),
      ],
    );
  }
}

import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/core/widgets/button_widget.dart';
import 'package:english_secrets/core/widgets/text_input_fields_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return Scaffold(
      appBar: AppBarWidget(title: AppString.editProfile),
      body: Form(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 14, vertical: 18),
          child: Column(
            spacing: 20.h,
            children: [
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
              TextInputFieldsWidget(
                controller: controller,
                textInputType: TextInputType.text,
                label: AppString.name,
                prefixIcon: IconBroken.Profile,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppString.pleaseEnterAvalidName;
                  }
                },
              ),
              TextInputFieldsWidget(
                controller: controller,
                textInputType: TextInputType.text,
                label: AppString.email,
                prefixIcon: IconBroken.Message,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppString.pleaseEnterAvalidEmail;
                  }
                },
              ),
              TextInputFieldsWidget(
                controller: controller,
                textInputType: TextInputType.phone,
                label: AppString.phone,
                prefixIcon: IconBroken.Calling,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return AppString.pleaseEnterAvalidPhone;
                  }
                },
              ),
              ButtonWidget(
                onBackPressed: () {},
                btnText: AppString.save,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/text_input_fields_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class RegisterTextFieldsWidget extends StatefulWidget {
  const RegisterTextFieldsWidget({super.key});

  @override
  State<RegisterTextFieldsWidget> createState() => _RegisterTextFieldsWidget();
}

bool isPasswordObscureText = true;
var nameController = TextEditingController();
var emailController = TextEditingController();
var phoneController = TextEditingController();
var passwordController = TextEditingController();

class _RegisterTextFieldsWidget extends State<RegisterTextFieldsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.h,
      children: [
        TextInputFieldsWidget(
          controller: nameController,
          textInputType: TextInputType.name,
          label: AppString.name,
          prefixIcon: IconBroken.User,
          validate: (value) {
            if (value == null || value.isEmpty) {
              return AppString.pleaseEnterAvalidName;
            }
          },
        ),
        TextInputFieldsWidget(
          controller: emailController,
          textInputType: TextInputType.emailAddress,
          label: AppString.email,
          prefixIcon: IconBroken.Message,
          validate: (value) {
            if (value == null || value.isEmpty) {
              return AppString.pleaseEnterAvalidEmail;
            }
          },
        ),
        TextInputFieldsWidget(
          controller: phoneController,
          textInputType: TextInputType.phone,
          label: AppString.phone,
          prefixIcon: IconBroken.Calling,
          validate: (value) {
            if (value == null || value.isEmpty) {
              return AppString.pleaseEnterAvalidPhone;
            }
          },
        ),
        TextInputFieldsWidget(
          controller: passwordController,
          textInputType: TextInputType.visiblePassword,
          label: AppString.password,
          prefixIcon: IconBroken.Lock,
          isObscureText: isPasswordObscureText,
          suffixIcon: isPasswordObscureText ? IconBroken.Hide : IconBroken.Show,
          onPressed: () {
            setState(() {
              isPasswordObscureText = !isPasswordObscureText;
            });
          },
          validate: (value) {
            if (value == null || value.isEmpty) {
              return AppString.pleaseEnterAvalidEmail;
            }
          },
        ),
      ],
    );
  }
}

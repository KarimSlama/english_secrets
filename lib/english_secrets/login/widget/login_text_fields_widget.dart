import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/text_input_fields_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';

class LoginTextFieldsWidget extends StatefulWidget {
  const LoginTextFieldsWidget({super.key});

  @override
  State<LoginTextFieldsWidget> createState() => _LoginTextFieldsWidgetState();
}

bool isPasswordObscureText = true;
var emailController = TextEditingController();
var passwordController = TextEditingController();
class _LoginTextFieldsWidgetState extends State<LoginTextFieldsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15.h,
      children: [
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
          controller: passwordController,
          textInputType: TextInputType.visiblePassword,
          label: AppString.password,
          prefixIcon: IconBroken.Lock,
          isObscureText: isPasswordObscureText,
          suffixIcon:
          isPasswordObscureText ? IconBroken.Hide : IconBroken.Show,
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

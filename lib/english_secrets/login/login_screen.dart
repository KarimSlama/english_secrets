import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/helpers/spacing.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/core/widgets/button_widget.dart';
import 'package:english_secrets/english_secrets/login/widget/do_not_have_an_account_button.dart';
import 'package:english_secrets/english_secrets/login/widget/forgot_password_button.dart';
import 'package:english_secrets/english_secrets/login/widget/login_text_fields_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBarWidget(title: AppString.login),
      body: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 14),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              spacing: 16.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.learnAfewAchieveAlot,
                ),
                verticalSpace(15),
                LoginTextFieldsWidget(),
                ForgotPasswordButton(),
                DoNotHaveAnAccountButton(),
                ButtonWidget(
                  btnText: AppString.login,
                  onBackPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.pushNamed(Routes.dashboardScreen);
                    }
                  }, width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

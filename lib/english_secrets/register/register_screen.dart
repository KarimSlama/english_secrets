import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/core/widgets/button_widget.dart';
import 'package:english_secrets/english_secrets/register/widget/already_have_an_account_button.dart';
import 'package:english_secrets/english_secrets/register/widget/register_text_fields_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBarWidget(title: AppString.signUp),
      body: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 14),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.h,
              children: [
                Text(AppString.thereIsNoTimeLikeThePresentToStart),
                RegisterTextFieldsWidget(),
                AlreadyHaveAnAccountButton(),
                ButtonWidget(
                  btnText: AppString.signUp,
                  onBackPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.pushNamed(Routes.dashboardScreen);
                    }
                  },
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

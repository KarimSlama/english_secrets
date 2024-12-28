import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/core/widgets/button_widget.dart';
import 'package:english_secrets/core/widgets/text_input_fields_widget.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBarWidget(title: AppString.forgotPassword),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              TextInputFieldsWidget(
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                label: AppString.email,
                prefixIcon: IconBroken.Message,
                validate: (value) {
                  if (value != null || value!.isEmpty) {
                    return AppString.pleaseEnterAvalidEmail;
                  }
                },
              ),
              ButtonWidget(
                onBackPressed: () {},
                btnText: AppString.next,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

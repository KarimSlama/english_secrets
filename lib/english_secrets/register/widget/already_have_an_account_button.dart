import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountButton extends StatelessWidget {
  const AlreadyHaveAnAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        child: Text(AppString.alreadyHaveAccount),
      ),
    );
  }
}
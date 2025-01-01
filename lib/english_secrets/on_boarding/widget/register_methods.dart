import 'package:english_secrets/english_secrets/on_boarding/widget/continue_with_email.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/register_with_apple.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/register_with_facebook.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/register_with_google.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterMethods extends StatelessWidget {
  final Animation<Offset> emailAnimation;
  final Animation<Offset> appleAnimation;
  final Animation<Offset> googleAnimation;
  final Animation<Offset> facebookAnimation;

  const RegisterMethods({
    super.key,
    required this.emailAnimation,
    required this.appleAnimation,
    required this.googleAnimation,
    required this.facebookAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideTransition(position: emailAnimation, child: ContinueWithEmail()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10.w,
          children: [
            SlideTransition(
                position: appleAnimation, child: RegisterWithApple()),
            SlideTransition(
                position: googleAnimation, child: RegisterWithGoogle()),
            SlideTransition(
                position: facebookAnimation, child: RegisterWithFacebook()),
          ],
        ),
      ],
    );
  }
}

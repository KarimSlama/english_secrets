import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/support/widget/social_media_platform.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsappUrlWidget extends StatelessWidget {
  final String phoneNumber = '201093019281';
  final String message =
      'Hello, I Chat you to know more about the ielts course.....';

  Future<void> _openWhatsApp() async {
    final Uri uri = Uri.parse(
        'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}');

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $uri';
    }
  }

  const WhatsappUrlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialMediaPlatform(
        icon: Assets.icons.whatsapp,
        platformName: AppString.whatsapp,
        onTapped: () {
          _openWhatsApp();
        });
  }
}

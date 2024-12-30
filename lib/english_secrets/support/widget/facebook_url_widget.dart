import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/support/widget/social_media_platform.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FacebookUrlWidget extends StatelessWidget {
  final String facebookPageUrl = 'https://www.facebook.com/EnglishSecretss';

  Future<void> openFacebookPage() async {
    final Uri url = Uri.parse('https://www.facebook.com/EnglishSecretss');

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $facebookPageUrl';
    }
  }

  const FacebookUrlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialMediaPlatform(
        icon: Assets.icons.facebook,
        platformName: AppString.facebook,
        onTapped: () {
          openFacebookPage();
        });
  }
}

import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/support/widget/social_media_platform.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebsiteUrlWidget extends StatelessWidget {
  final String websiteUrl = 'https://english-secrets.com/';

  Future<void> openWebsite() async {
    final Uri url = Uri.parse(websiteUrl);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $websiteUrl';
    }
  }

  const WebsiteUrlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialMediaPlatform(
        icon: Assets.icons.link,
        platformName: AppString.link,
        onTapped: () async {
          await openWebsite();
        });
  }
}

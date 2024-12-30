import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/helpers/spacing.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/english_secrets/settings/data/model/setting_item_model.dart';
import 'package:english_secrets/english_secrets/settings/widget/section_title_widget.dart';
import 'package:english_secrets/english_secrets/settings/widget/setting_title_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SettingItemModel> generalSettings = [
      SettingItemModel(
        icon: Assets.icons.faqs,
        title: AppString.faqs,
        isSwitch: false,
        onTap: () {
          context.pushNamed(Routes.faqsScreen);
        },
      ),
      SettingItemModel(
        icon: Assets.icons.mode,
        title: AppString.darkMode,
        isSwitch: true,
        switchValue: false,
        onSwitchChanged: (value) {},
      ),
      SettingItemModel(
        icon: Assets.icons.security,
        title: AppString.security,
        isSwitch: false,
        onTap: () {},
      ),
      SettingItemModel(
        icon: Assets.icons.notification,
        title: AppString.notification,
        isSwitch: false,
        onTap: () {},
      ),
      SettingItemModel(
        icon: Assets.icons.volume,
        title: AppString.sounds,
        isSwitch: true,
        switchValue: false,
        onSwitchChanged: (value) {},
      ),
      SettingItemModel(
        icon: Assets.icons.testimonials,
        title: AppString.testimonials,
        isSwitch: false,
        onTap: () {},
      ),
    ];

    final List<SettingItemModel> aboutSettings = [
      SettingItemModel(
        icon: Assets.icons.star,
        title: AppString.rateEnglishSecrets,
        isSwitch: false,
        onTap: () {},
      ),
      SettingItemModel(
        icon: Assets.icons.share,
        title: AppString.shareWithFriends,
        isSwitch: false,
        onTap: () {},
      ),
      SettingItemModel(
        icon: Assets.icons.about,
        title: AppString.aboutUs,
        isSwitch: false,
        onTap: () {
          context.pushNamed(Routes.aboutUsScreen);
        },
      ),
      SettingItemModel(
        icon: Assets.icons.support,
        title: AppString.support,
        isSwitch: false,
        onTap: () {
          context.pushNamed(Routes.supportScreen);
        },
      ),
    ];

    return Scaffold(
      appBar: AppBarWidget(title: AppString.settings),
      body: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 18),
        child: ListView(
          children: [
            const SectionTitleWidget(title: AppString.general),
            ...generalSettings.map((item) => SettingTitleWidget(item: item)),
            verticalSpace(10),
            const SectionTitleWidget(title: AppString.aboutUs),
            ...aboutSettings.map((item) => SettingTitleWidget(item: item)),
          ],
        ),
      ),
    );
  }
}

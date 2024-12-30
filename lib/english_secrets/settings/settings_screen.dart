import 'package:english_secrets/core/helpers/spacing.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/english_secrets/settings/data/model/general_options_list.dart';
import 'package:english_secrets/english_secrets/settings/widget/section_title_widget.dart';
import 'package:english_secrets/english_secrets/settings/widget/setting_title_widget.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

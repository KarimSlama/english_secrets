import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/settings/data/model/setting_item_model.dart';
import 'package:english_secrets/gen/assets.gen.dart';

final List<SettingItemModel> generalSettings = [
  SettingItemModel(
    icon: Assets.icons.setting,
    title: 'General',
    isSwitch: false,
    onTap: () {},
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
    icon: Assets.icons.faqs,
    title: AppString.faqs,
    isSwitch: false,
    onTap: () {},
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
    onTap: () {},
  ),
  SettingItemModel(
    icon: Assets.icons.support,
    title: AppString.support,
    isSwitch: false,
    onTap: () {},
  ),
];

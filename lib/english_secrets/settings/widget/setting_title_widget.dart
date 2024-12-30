import 'package:english_secrets/core/widgets/custom_switch_icon.dart';
import 'package:english_secrets/english_secrets/settings/data/model/setting_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_broken/icon_broken.dart';

class SettingTitleWidget extends StatelessWidget {
  final SettingItemModel item;

  const SettingTitleWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.icon),
      title: Text(
        item.title,
      ),
      trailing: item.isSwitch
          ? CustomSwitch(
              initialValue: item.switchValue ?? false,
              onChanged: (value) {
                item.onSwitchChanged;
              })
          : const Icon(IconBroken.Arrow___Right_2),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.white,
      onTap: item.onTap,
    );
  }
}

import 'package:flutter/material.dart';

class SettingItemModel {
  final String icon;
  final String title;
  final bool isSwitch;
  final bool? switchValue;
  final ValueChanged<bool>? onSwitchChanged;
  final VoidCallback? onTap;

  SettingItemModel({
    required this.icon,
    required this.title,
    this.isSwitch = false,
    this.switchValue,
    this.onSwitchChanged,
    this.onTap,
  });
}

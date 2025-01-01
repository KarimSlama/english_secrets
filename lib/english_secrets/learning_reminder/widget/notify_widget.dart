import 'package:english_secrets/core/widgets/custom_switch_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotifyWidget extends StatelessWidget {
  final String icon;
  final String title;
  final ValueChanged<dynamic> onPressed;

  const NotifyWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(icon),
      title: Text(
        title,
      ),
      trailing: CustomSwitch(
          initialValue: true,
          onChanged: (value) {
            onPressed(value);
          }),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      tileColor: Colors.white,
    );
  }
}

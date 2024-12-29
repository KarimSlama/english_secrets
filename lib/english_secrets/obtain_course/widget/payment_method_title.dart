import 'package:english_secrets/core/helpers/separator.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethodTile extends StatelessWidget {
  final String image;
  final String title;
  final String value;
  final String? groupValue;
  final ValueChanged<String?> onChanged;

  const PaymentMethodTile({
    super.key,
    required this.image,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: SvgPicture.asset(
            image,
            width: 35,
            height: 35,
          ),
          title: Padding(
            padding: const EdgeInsetsDirectional.only(start: 40),
            child: Text(title),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio<String>(
                value: value,
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: AppColors.blue,
              ),
            ],
          ),
        ),
        heightSeparator(),
      ],
    );
  }
}

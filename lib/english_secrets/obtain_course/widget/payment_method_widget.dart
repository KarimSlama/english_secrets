import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/obtain_course/widget/payment_method_title.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({super.key});

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

String? selectedMethod = AppString.creditCard;

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodTile(
          image: Assets.icons.visa,
          title: AppString.creditCard,
          value: AppString.creditCard,
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(() {
              selectedMethod = value;
            });
          },
        ),
        PaymentMethodTile(
          image: Assets.icons.paypal,
          title: AppString.payPal,
          value: AppString.payPal,
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(() {
              selectedMethod = value;
            });
          },
        ),
        PaymentMethodTile(
          image: Assets.icons.vodafone,
          title: AppString.vodafoneCash,
          value: AppString.vodafoneCash,
          groupValue: selectedMethod,
          onChanged: (value) {
            setState(() {
              selectedMethod = value;
            });
          },
        ),
      ],
    );
  }
}

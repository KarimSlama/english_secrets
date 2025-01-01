import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextInputFieldsWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String label;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final Function? onPressed;
  final FormFieldValidator<String> validate;
  final bool isObscureText;

  const TextInputFieldsWidget({
    super.key,
    required this.controller,
    required this.textInputType,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
    this.onPressed,
    required this.validate,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: isObscureText,
      validator: (value) {
        return validate(value);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: AppColors.light, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.light, width: 1.0),
        ),
        fillColor: AppColors.white,
        labelText: label,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: IconButton(
          onPressed: onPressed != null ? () => onPressed!() : null,
          icon: Icon(suffixIcon),
        ),
      ),
    );
  }
}

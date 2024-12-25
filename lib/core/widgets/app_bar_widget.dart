import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onPressed;

  const AppBarWidget({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.white),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
        onPressed: onPressed ?? () => context.pop(),
        icon: Icon(Icons.keyboard_arrow_left_outlined),
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

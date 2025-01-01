import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FullScreenIcon extends StatelessWidget {
  const FullScreenIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        Assets.icons.fullScreen,
        width: 30,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildUserImage extends StatelessWidget {
  final double topImageOffset;
  final bool isTop;
  final Image image;

  const BuildUserImage(
      {super.key,
      required this.topImageOffset,
      this.isTop = false,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 260.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          colors: isTop ? colors : colors1,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.translate(
            offset: Offset(0, topImageOffset),
            child: SizedBox(
              width: 65.w,
              height: 65.h,
              child: image,
            ),
          ),
        ],
      ),
    );
  }
}

List<Color> colors1 = [
  Colors.white.withValues(alpha: 0.1),
  Colors.white.withValues(alpha: 0.4),
];
List<Color> colors = [
  Colors.white.withValues(alpha: 0.4),
  Colors.white.withValues(alpha: 0.1),
];

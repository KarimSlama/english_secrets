import 'package:flutter/material.dart';

class AnimatedCard extends StatelessWidget {
  final Widget child;
  final double delay;

  const AnimatedCard({super.key, required this.child, required this.delay});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<Offset>(begin: const Offset(0, 0.2), end: Offset.zero),
      duration: Duration(milliseconds: (500 + delay * 1000).toInt()),
      curve: Curves.easeOut,
      builder: (context, offset, child) {
        return Transform.translate(
          offset: (offset) * MediaQuery.of(context).size.height,
          child: child,
        );
      },
      child: child,
    );
  }
}


import 'package:confetti/confetti.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckCelebratingAnimationWidget extends StatefulWidget {
  const CheckCelebratingAnimationWidget({super.key});

  @override
  _CheckCelebratingAnimationWidget createState() =>
      _CheckCelebratingAnimationWidget();
}

class _CheckCelebratingAnimationWidget
    extends State<CheckCelebratingAnimationWidget> {
  late ConfettiController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 3));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ConfettiWidget(
            confettiController: _controller,
            blastDirectionality: BlastDirectionality.explosive,
            shouldLoop: false,
            colors: [
              Colors.orange,
              Colors.blue,
              Colors.red,
              Colors.green,
              Colors.purple,
              Colors.brown,
              Colors.amber,
              Colors.pinkAccent,
              Colors.teal,
            ],
          ),
          SvgPicture.asset(Assets.icons.check),
        ],
      ),
    );
  }
}

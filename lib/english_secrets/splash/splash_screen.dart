import 'package:english_secrets/english_secrets/splash/widget/animated_text_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController logoController;
  late Animation<double> rotationAnimation;

  @override
  void initState() {
    super.initState();

    // Logo Rotation Animation Controller
    logoController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    rotationAnimation = Tween<double>(begin: 0.0, end: 2.0 * 3.14).animate(
      CurvedAnimation(parent: logoController, curve: Curves.easeInOut),
    );

    // Start Logo Animation
    logoController.repeat();

  }

  @override
  void dispose() {
    logoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [Color(0xff6B73FF), Color(0xff000DFF)],
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            // Rotating SVG Background
            AnimatedBuilder(
              animation: rotationAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: rotationAnimation.value,
                  child: SvgPicture.asset(Assets.icons.witheCircle),
                );
              },
            ),
            // Centered Logo
            Center(child: Assets.images.logo.image(width: 290.w)),
            // Typing Effect Text
            AnimatedTextWidget(),
          ],
        ),
      ),
    );
  }
}

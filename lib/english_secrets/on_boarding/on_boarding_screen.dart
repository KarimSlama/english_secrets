import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/on_boarding_indicator.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/on_boarding_page_view_widget.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/register_methods.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/terms_and_conditions.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  final PageController _pageController = PageController();

  // Define animations
  late final Animation<Offset> _textSlideAnimation;
  late final Animation<Offset> _appleAnimation;
  late final Animation<Offset> _emailAnimation;
  late final Animation<Offset> _facebookAnimation;
  late final Animation<Offset> _googleAnimation;
  late final Animation<Offset> _imageSlideAnimation;
  late final Animation<double> _boxVerticalAnimation;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();

    _textSlideAnimation =
        Tween<Offset>(begin: Offset(0, 1), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _emailAnimation = Tween<Offset>(
      begin: Offset(0, 1.2),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.3, curve: Curves.easeOut),
      ),
    );

    _appleAnimation = Tween<Offset>(
      begin: Offset(0, 1.2),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0, 0.5, curve: Curves.easeOut),
      ),
    );

    _googleAnimation = Tween<Offset>(
      begin: Offset(0, 1.2),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.1, 0.7, curve: Curves.easeOut),
      ),
    );

    _facebookAnimation = Tween<Offset>(
      begin: Offset(0, 1.2),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.2, 0.9, curve: Curves.easeOut),
      ),
    );

    _imageSlideAnimation =
        Tween<Offset>(begin: Offset(1.0, 0), end: Offset(0, 0)).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _boxVerticalAnimation = Tween<double>(begin: 0, end: 20.h).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.linear,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Stack(
              children: [
                Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: SvgPicture.asset(Assets.icons.dots)),
                Column(
                  spacing: 5.h,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 600.h,
                      child: OnBoardingPageView(
                        scaleAnimation: _scaleAnimation,
                        fadeAnimation: _fadeAnimation,
                        pageController: _pageController,
                        controller: _controller,
                        boxVerticalAnimation: _boxVerticalAnimation,
                        textSlideAnimation: _textSlideAnimation,
                        imageSlideAnimation: _imageSlideAnimation,
                      ),
                    ),
                    OnBoardingIndicator(pageController: _pageController),
                    RegisterMethods(
                      appleAnimation: _appleAnimation,
                      emailAnimation: _emailAnimation,
                      facebookAnimation: _facebookAnimation,
                      googleAnimation: _googleAnimation,
                    ),
                    TermsAndConditions(textSlideAnimation: _textSlideAnimation),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

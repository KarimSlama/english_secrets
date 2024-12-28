import 'dart:async';
import 'package:english_secrets/core/helpers/extensions.dart';
import 'package:english_secrets/core/routing/routes.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/course/widget/grid_view_course_item_widget.dart';
import 'package:english_secrets/english_secrets/course/widget/header_widget.dart';
import 'package:english_secrets/english_secrets/course/widget/quote_card_widget.dart';
import 'package:english_secrets/english_secrets/course/widget/smooth_page_indicator_widget.dart';
import 'package:english_secrets/english_secrets/course/widget/headline_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  Timer? timer;
  int currentPage = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (currentPage < 5) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      pageController.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 14),
        child: Column(
          spacing: 16,
          children: [
            HeaderWidget(),
            HeadlineWidget(
              headline: AppString.whatOtherSay,
            ),
            SizedBox(
              height: 160.h,
              child: PageView.builder(
                itemBuilder: (context, index) => QuoteCardWidget(),
                itemCount: 5,
                controller: pageController,
              ),
            ),
            SmoothPageIndicatorWidget(pageController: pageController),
            Row(
              children: [
                HeadlineWidget(headline: AppString.discoverCourses),
                Spacer(),
                TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.seeMoreScreen);
                  },
                  child: Text(
                    AppString.seeMore,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.light,
                        ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                physics: const BouncingScrollPhysics(),
                mainAxisSpacing: 1,
                crossAxisSpacing: 14,
                childAspectRatio: 1 / 1.6,
                children: List.generate(
                  2,
                  (index) => GridViewCourseItemWidget(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:animation_list/animation_list.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/english_secrets/see_more/widget/all_courses_list_view_widget.dart';
import 'package:flutter/material.dart';

class SeeMoreScreen extends StatelessWidget {
  const SeeMoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: AppString.allCourses,
      ),
      body: AnimationList(
        animationDirection: AnimationDirection.vertical,
        duration: 1000,
        reBounceDepth: 10,
        children: List.generate(
          10,
          (index) => AllCoursesListViewWidget(),
        ),
      ),
    );
  }
}

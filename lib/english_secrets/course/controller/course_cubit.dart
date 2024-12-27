import 'dart:async';

import 'package:english_secrets/english_secrets/course/controller/course_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit() : super(CourseState.initial());

  PageController pageController = PageController();
  int totalPages = 5;
  int? nextPage;

  void startAutoSliding() async {
    emit(CourseState.loading());
    Timer.periodic(Duration(seconds: 2), (timer) {
      state.whenOrNull(success: (index) {
        nextPage = (index + 1) % totalPages;
        pageController.animateToPage(nextPage!,
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        emit(CourseState.success(nextPage!));
      });
    });
    emit(CourseState.success(nextPage!));
  }

// @override
// Future<void> close() {
//   timer.cancel();
//   return super.close();
// }
}

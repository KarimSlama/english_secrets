import 'package:english_secrets/english_secrets/course/course_screen.dart';
import 'package:english_secrets/english_secrets/dashboard/controller/dashboard_state.dart';
import 'package:english_secrets/english_secrets/notification/notification_screen.dart';
import 'package:english_secrets/english_secrets/profile/profile_screen.dart';
import 'package:english_secrets/english_secrets/videos/videos_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardState.initial());

  int currentIndex = 0;

  List<Widget> screens = [
    CourseScreen(),
    VideosScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  void changeDashboardScreen(int index) {
    if (currentIndex != index) {
      currentIndex = index;
      emit(DashboardState.changed(currentIndex));
    }
  }
}

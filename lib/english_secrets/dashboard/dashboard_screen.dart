import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/english_secrets/dashboard/controller/dashboard_cubit.dart';
import 'package:english_secrets/english_secrets/dashboard/controller/dashboard_state.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DashboardCubit>();

    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: CrystalNavigationBar(
            backgroundColor: AppColors.dark.withValues(alpha: .3),
            selectedItemColor: AppColors.blue,
            unselectedItemColor: AppColors.white,
            onTap: (value) {
              cubit.changeDashboardScreen(value);
            },
            indicatorColor: AppColors.blue,
            currentIndex: cubit.currentIndex,
            items: [
              CrystalNavigationBarItem(icon: IconBroken.Home),
              CrystalNavigationBarItem(icon: IconBroken.Video),
              CrystalNavigationBarItem(icon: IconBroken.Notification),
              CrystalNavigationBarItem(icon: IconBroken.Profile),
            ],
          ),
        );
      },
    );
  }
}

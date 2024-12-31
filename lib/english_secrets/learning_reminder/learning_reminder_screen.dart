import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/english_secrets/learning_reminder/widget/notify_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LearningReminderScreen extends StatelessWidget {
  const LearningReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: AppString.learningReminder),
      body: Column(
        children: [
          NotifyWidget(
              icon: Assets.icons.document,
              title: AppString.notifyMeWhenNewSessionAdded,
              onPressed: (value) {
              }),
          NotifyWidget(
              icon: Assets.icons.support,
              title: AppString.notifyMeWhenNewQuizzesAdded,
              onPressed: (value) {
              })
        ],
      ),
    );
  }
}

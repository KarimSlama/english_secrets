import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:english_secrets/core/helpers/separator.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/videos/widget/session_widget.dart';
import 'package:english_secrets/english_secrets/videos/widget/video_icons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 14, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 14.h,
          children: [
            Container(
              height: 180.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/student-class-looking-course_23-2148888810.jpg?uid=R50433035&ga=GA1.1.1043572054.1723626862&semt=ais_hybrid'),
                ),
              ),
            ),
            ProgressBar(
              progress: Duration(minutes: 3, seconds: 54),
              buffered: Duration(seconds: 33),
              total: Duration(minutes: 5, seconds: 21),
              onSeek: (duration) {},
            ),
            VideoIconsWidget(),
            Text(AppString.allVideos),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => SessionWidget(),
                separatorBuilder: (context, index) => heightSeparator(),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

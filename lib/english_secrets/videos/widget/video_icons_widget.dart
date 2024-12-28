import 'package:english_secrets/english_secrets/videos/widget/full_screen_icon.dart';
import 'package:english_secrets/english_secrets/videos/widget/play_video_icon.dart';
import 'package:english_secrets/english_secrets/videos/widget/preview_icon.dart';
import 'package:english_secrets/english_secrets/videos/widget/right_icon.dart';
import 'package:english_secrets/english_secrets/videos/widget/sound_icon.dart';
import 'package:flutter/material.dart';

class VideoIconsWidget extends StatelessWidget {
  const VideoIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FullScreenIcon(),
        Spacer(),
        PreviewIcon(),
        PlayVideoIcon(),
        RightIcon(),
        Spacer(),
        SoundIcon(),
      ],
    );
  }
}

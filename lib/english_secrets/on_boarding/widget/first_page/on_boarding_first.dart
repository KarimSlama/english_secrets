import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/on_boarding/data/model/image_data_list_model.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/first_page/image_user_box_widget.dart';
import 'package:english_secrets/english_secrets/on_boarding/widget/title_and_sub_title.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingFirst extends StatelessWidget {
  final List<Map<String, dynamic>> image;
  final AnimationController controller;
  final Animation<double> boxVerticalAnimation;
  final Animation<Offset> textSlideAnimation;
  final Animation<Offset> imageSlideAnimation;

  const OnBoardingFirst(
      {super.key,
      required this.image,
      required this.controller,
      required this.boxVerticalAnimation,
      required this.textSlideAnimation,
      required this.imageSlideAnimation});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        SizedBox(
          height: 370.h,
          child: Stack(
            children: imageData.map((image) {
              return Positioned(
                top: image['top'],
                left: image['left'],
                right: image['right'],
                bottom: image['bottom'],
                child: ImageUserBoxWidget(
                  controller: controller,
                  boxVerticalAnimation: boxVerticalAnimation,
                  fromLeft: image['fromLeft'],
                  imagePath: image['image'],
                  imageSlideAnimation: imageSlideAnimation,
                  textSlideAnimation: textSlideAnimation,
                ),
              );
            }).toList(),
          ),
        ),
        TitlesAndSubTitles(
          text: AppString.discoverNewAdventure,
          subText: AppString
              .changeYourLifeBySlowlyAddingAnewLanguageAndStickingToThem,
          textSlideAnimation: textSlideAnimation,
        ),
      ],
    );
  }
}

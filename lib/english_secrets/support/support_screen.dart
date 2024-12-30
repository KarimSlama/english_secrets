import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/english_secrets/support/widget/contact_details_widget.dart';
import 'package:english_secrets/english_secrets/support/widget/contact_us_header.dart';
import 'package:english_secrets/english_secrets/support/widget/custom_app_bar_leading_widget.dart';
import 'package:english_secrets/english_secrets/support/widget/facebook_url_widget.dart';
import 'package:english_secrets/english_secrets/support/widget/our_social_media_text_widget.dart';
import 'package:english_secrets/english_secrets/support/widget/website_url_widget.dart';
import 'package:english_secrets/english_secrets/support/widget/whatsapp_url_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<Widget> _items = [];

  @override
  void initState() {
    super.initState();
    _addItemsWithDelay();
  }

  void _addItemsWithDelay() async {
    final widgets = [
      ContactDetailsWidget(
          title: AppString.chatWithUs,
          subTitle: AppString.chatWithOurAssistantNow,
          icon: Assets.icons.support,
          color: AppColors.lightBlue),
      ContactDetailsWidget(
          title: AppString.callUs,
          subTitle: AppString.weAreAvailableFromTwelveToTwelve,
          icon: Assets.icons.call,
          color: AppColors.amber),
      ContactDetailsWidget(
          title: AppString.emailUs,
          subTitle: AppString.weWillGetBackWithin,
          icon: Assets.icons.chat,
          color: AppColors.pink),
      OurSocialMediaTextWidget(),
      FacebookUrlWidget(),
      WhatsappUrlWidget(),
      WebsiteUrlWidget(),
    ];

    for (int i = 0; i < widgets.length; i++) {
      await Future.delayed(const Duration(milliseconds: 300));
      _items.add(widgets[i]);
      _listKey.currentState?.insertItem(_items.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.blue,
        leading: CustomAppBarLeadingWidget(),
        elevation: 0,
      ),
      body: Column(
        spacing: 10.h,
        children: [
          ContactUsHeader(),
          Expanded(
            child: AnimatedList(
              key: _listKey,
              initialItemCount: _items.length,
              itemBuilder: (context, index, animation) {
                return SlideTransition(
                  position: animation.drive(
                    Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: Offset.zero,
                    ).chain(CurveTween(curve: Curves.easeOut)),
                  ),
                  child: _items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

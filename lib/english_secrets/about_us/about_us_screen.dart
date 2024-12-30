import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/english_secrets/about_us/widget/card_with_data_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  final List<Widget> _teamWidgets = [
    CardWithDataWidget(
        icon: Assets.images.ourMission,
        title: AppString.ourMission,
        subTitle: AppString.ourMissionDescription),
    CardWithDataWidget(
        icon: Assets.images.ourGoal,
        title: AppString.ourGoal,
        subTitle: AppString.ourGoalDescription),
    CardWithDataWidget(
        icon: Assets.images.ourVision,
        title: AppString.ourVision,
        subTitle: AppString.ourVisionDescription),
  ];

  final List<Widget> _displayedWidgets = [];

  @override
  void initState() {
    super.initState();
    _addWidgetsWithAnimation();
  }

  void _addWidgetsWithAnimation() async {
    for (int i = 0; i < _teamWidgets.length; i++) {
      await Future.delayed(const Duration(milliseconds: 300));
      _displayedWidgets.add(_teamWidgets[i]);
      _listKey.currentState?.insertItem(i);
    }
  }

  Widget _buildAnimatedTile(
      context,index, Animation<double> animation) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOut,
      )),
      child: _displayedWidgets[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: AppString.aboutUs),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _displayedWidgets.length,
        itemBuilder: (context, index, animation) {
          return _buildAnimatedTile(context, index, animation);
        },
      ),
    );
  }
}

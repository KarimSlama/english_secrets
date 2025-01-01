import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:english_secrets/core/widgets/app_bar_widget.dart';
import 'package:english_secrets/english_secrets/testimonials/widget/testimonial_card_widget.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TestimonialsScreen extends StatefulWidget {
  const TestimonialsScreen({super.key});

  @override
  State<TestimonialsScreen> createState() => _TestimonialsScreenState();
}

class _TestimonialsScreenState extends State<TestimonialsScreen> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<Widget> _items = [];

  @override
  void initState() {
    super.initState();
    addItemsWithDelay();
  }

  void addItemsWithDelay() async {
    final widgets = [
      TestimonialCardWidget(
        image: Assets.images.user2.path,
        name: 'Karim Slama',
        rate: 5,
        feedback:
            '“I highly recommend Ms. Heba Zaher as I got my desired score in IELTS ACADEMIC after taking the course with her',
      ),
      TestimonialCardWidget(
        image: Assets.images.user2.path,
        name: 'User ',
        rate: 5,
        feedback:
            '“I highly recommend Ms. Heba Zaher as I got my desired score in IELTS ACADEMIC after taking the course with her',
      ),
      TestimonialCardWidget(
        image: Assets.images.user2.path,
        name: 'User ',
        rate: 5,
        feedback:
            '“I highly recommend Ms. Heba Zaher as I got my desired score in IELTS ACADEMIC after taking the course with her',
      ),
      TestimonialCardWidget(
        image: Assets.images.user2.path,
        name: 'User ',
        rate: 5,
        feedback:
            '“I highly recommend Ms. Heba Zaher as I got my desired score in IELTS ACADEMIC after taking the course with her',
      ),
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
      appBar: AppBarWidget(title: AppString.testimonials),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
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
    );
  }
}

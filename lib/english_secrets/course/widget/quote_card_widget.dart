import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_broken/icon_broken.dart';

class QuoteCardWidget extends StatelessWidget {
  const QuoteCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 1),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.white,
            elevation: 3,
            child: Padding(
              padding: EdgeInsetsDirectional.all(10),
              child: Row(
                spacing: 12.w,
                children: [
                  CircleAvatar(
                    radius: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image(
                          image: NetworkImage(
                              'https://instagram.fcai20-4.fna.fbcdn.net/v/t51.2885-19/438848301_420682330819135_4907580139392682559_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcai20-4.fna.fbcdn.net&_nc_cat=107&_nc_oc=Q6cZ2AEmaG7TAKtIbbiW8dhs_m7chvSERRk66rwz5MPjJJh7hF2iq8mjqQDdiNUWkKNLdYA&_nc_ohc=w5-Pq16SHHYQ7kNvgF95YnK&_nc_gid=4f41bccd8dd04e3abaa9a0aad9f5e452&edm=AEYEu-QBAAAA&ccb=7-5&oh=00_AYD4v-Qrr0SqcKTDC4WLySZdBvzWhM8NhZfmxm8i9K7V0Q&oe=67733BA3&_nc_sid=ead929')),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 7.h,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 5.w,
                          children: [
                            Text('5'),
                            Icon(
                              IconBroken.Star,
                              size: 20,
                              color: AppColors.amber,
                            ),
                          ],
                        ),
                        Text(
                          'Karim Slama',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Text(
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          '“I highly recommend Ms. Heba Zaher as I got my desired score in IELTS ACADEMIC after taking the course with her',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: AppColors.light, fontSize: 14.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SvgPicture.asset(Assets.icons.quote),
      ],
    );
  }
}

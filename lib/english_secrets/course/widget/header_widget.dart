import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:english_secrets/core/theming/app_strings/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.hello,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.light,
              ),
            ),
            Text(
              'Karim Slama 👋',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 30,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
                image: NetworkImage(
                    'https://instagram.fcai20-4.fna.fbcdn.net/v/t51.2885-19/438848301_420682330819135_4907580139392682559_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=instagram.fcai20-4.fna.fbcdn.net&_nc_cat=107&_nc_oc=Q6cZ2AEmaG7TAKtIbbiW8dhs_m7chvSERRk66rwz5MPjJJh7hF2iq8mjqQDdiNUWkKNLdYA&_nc_ohc=w5-Pq16SHHYQ7kNvgF95YnK&_nc_gid=4f41bccd8dd04e3abaa9a0aad9f5e452&edm=AEYEu-QBAAAA&ccb=7-5&oh=00_AYD4v-Qrr0SqcKTDC4WLySZdBvzWhM8NhZfmxm8i9K7V0Q&oe=67733BA3&_nc_sid=ead929')),
          ),
        ),
      ],
    );
  }
}

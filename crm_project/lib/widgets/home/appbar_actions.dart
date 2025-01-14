import 'package:crm_project/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            icon: SvgPicture.asset(
              'assets/icons/svg/calendar.svg',
              width: 20,
            ),
            onPressed: () {}),
        const SizedBox(width: 10),
        IconButton(
            icon: SvgPicture.asset('assets/icons/svg/ring.svg', width: 20.0),
            onPressed: () {}),
        const SizedBox(width: 15),
        const Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
              ),
            ),
            Icon(Icons.arrow_drop_down_outlined, color: AppColors.black)
          ],
        ),
      ],
    );
  }
}

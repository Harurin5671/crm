import 'package:crm_project/screens/clients/add_client_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:crm_project/configs/configs.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: const BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                 height: 100,
                 alignment: Alignment.topCenter,
                 width: double.infinity,
                 padding: const EdgeInsets.all(15),
                 child: SizedBox(
                      width: 35,
                      height: 20,
                      child: SvgPicture.asset('assets/icons/svg/mac-action.svg'),
                    ),
               ),
                IconButton(
                    iconSize: 20,
                    padding: const EdgeInsets.all(15),
                    icon: SvgPicture.asset(
                      'assets/icons/svg/home.svg',
                      colorFilter: const ColorFilter.mode(AppColors.iconGray, BlendMode.srcIn),
                      height: 40,
                      width: 40,
                    ),
                    onPressed: () {}),
                IconButton(
                    iconSize: 20,
                    padding: const EdgeInsets.all(15),
                    icon: SvgPicture.asset(
                      'assets/icons/svg/pie-chart.svg',
                      colorFilter: const ColorFilter.mode(AppColors.iconGray, BlendMode.srcIn),
                      height: 40,
                      width: 40,
                    ),
                    onPressed: () {}),
                IconButton(
                    iconSize: 20,
                    padding: const EdgeInsets.all(15),
                    icon: SvgPicture.asset(
                      'assets/icons/svg/clipboard.svg',
                      colorFilter: const ColorFilter.mode(AppColors.iconGray, BlendMode.srcIn),
                      height: 40,
                      width: 40,
                    ),
                    onPressed: () {}),
                IconButton(
                    iconSize: 20,
                    padding: const EdgeInsets.all(15),
                    icon: SvgPicture.asset(
                      'assets/icons/svg/credit-card.svg',
                      colorFilter: const ColorFilter.mode(AppColors.iconGray, BlendMode.srcIn),
                      height: 40,
                      width: 40,
                    ),
                    onPressed: () {}),
                IconButton(
                    iconSize: 20,
                    padding: const EdgeInsets.all(15),
                    icon: SvgPicture.asset(
                      'assets/icons/svg/trophy.svg',
                      colorFilter: const ColorFilter.mode(AppColors.iconGray, BlendMode.srcIn),
                      height: 40,
                      width: 40,
                    ),
                    onPressed: () {}),
                IconButton(
                    iconSize: 20,
                    padding: const EdgeInsets.all(15),
                    icon: SvgPicture.asset(
                      'assets/icons/svg/invoice.svg',
                      colorFilter: const ColorFilter.mode(AppColors.iconGray, BlendMode.srcIn),
                      height: 40,
                      width: 40,
                    ),
                    onPressed: () {}),
                IconButton(
                    iconSize: 20,
                    padding: const EdgeInsets.all(15),
                    icon: SvgPicture.asset(
                      'assets/icons/svg/client.svg',
                      colorFilter: const ColorFilter.mode(AppColors.iconGray, BlendMode.srcIn),
                      height: 40,
                      width: 40,
                    ),
                    onPressed: () => const AddClientScreen()),
              ],
            ),
        ),
        ),
      );
  }
}
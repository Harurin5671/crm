import 'package:crm_project/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.icon,
      required this.label,
      required this.amount});

  final String icon;
  final String label;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          minWidth: Responsive.isDesktop(context)
              ? 200
              : SizeConfig.screenWidth / 2 - 40),
      padding: EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 20,
          right: Responsive.isMobile(context) ? 20 : 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            width: 35,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: AppColors.secondary),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical * 2,
          ),
          Text(
            amount,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey();
    SizeConfig().init(context);
    return Scaffold(
      key: drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  drawerKey.currentState?.openDrawer();
                },
                icon: const Icon(Icons.menu, color: AppColors.black),
              ),
              actions: const [
                AppBarActions()
              ],
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
          
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideMenu(),
              ),
           Expanded(
              flex: 10,
              child: SafeArea(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [
                      const Header(),
                      SizedBox(height: SizeConfig.blockSizeHorizontal * 4,),
                      SizedBox(
                        width: SizeConfig.screenWidth,
                        child: const Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            InfoCard(icon: 'assets/icons/svg/credit-card.svg', label: 'Transfer via \nCard number', amount: '\$1200'),
                            InfoCard(icon: 'assets/icons/svg/transfer.svg', label: 'Transfer via \nOnline Banks', amount: '\$1200'),
                            InfoCard(icon: 'assets/icons/svg/bank.svg', label: 'Transfer via \nSame Bank', amount: '\$1200'),
                            InfoCard(icon: 'assets/icons/svg/invoice.svg', label: 'Transfer via \nOther Bank', amount: '\$1200')
                          ],
                        ),
                      ),
                      SizedBox(
                          height: SizeConfig.blockSizeVertical * 4,
                        ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

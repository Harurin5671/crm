import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/screens/screens.dart';
import 'package:flutter/material.dart';

class AccountProfileScreen extends StatelessWidget {
  const AccountProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: isMobile
          ? AppBar(
              title: const Text('Account'),
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: GestureDetector(onTap: () => FocusManager.instance.primaryFocus?.unfocus(), child: const ProfileAccountResponsive()),
    );
  }
}

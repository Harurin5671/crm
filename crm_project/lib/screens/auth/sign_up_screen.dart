import 'package:flutter/material.dart';

import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    bool isMobile = Responsive.isMobile(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: isMobile
          ? AppBar(
              title: const Text('Registro'),
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: GestureDetector(onTap: () => FocusManager.instance.primaryFocus?.unfocus(), child: const SignUpResponsive()),
    );
  }
}

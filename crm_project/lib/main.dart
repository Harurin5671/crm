import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.fadeIn,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      // darkTheme: AppTheme().darkTheme,
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.home,
      unknownRoute: GetPage(name: AppRoutes.notFound, page: () => const NotFoundScreen()),
    );
  }
}

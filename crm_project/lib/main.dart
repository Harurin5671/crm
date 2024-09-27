import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:crm_project/configs/configs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      darkTheme: AppTheme().darkTheme,
      themeMode: ThemeMode.system,
      getPages: AppRoutes.routes,
      initialRoute: ConstantRoutesApp.login,
      unknownRoute: AppRoutes.notFound,
    );
  }
}

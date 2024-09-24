import 'package:get/get.dart';

import 'package:crm_project/screens/screens.dart';

class AppRoutes {
  static const home = '/home';
  static const notFound = '/not-found';

  static final routes = [
    GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
  ];
}
import 'package:get/get.dart';

import 'package:crm_project/screens/screens.dart';

class AppRoutes {
  // static const home = '/home';
  static const notFound = '/not-found';

  static final routes = [
    GetPage(title: 'Sign Up', name: '/sign-up', page: () => const SignUpScreen()),
    GetPage(title: 'Home', name: '/home', page: () => const HomeScreen()),
  ];
}
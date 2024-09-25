import 'package:crm_project/screens/clients/add_client_screen.dart';
import 'package:get/get.dart';

import 'package:crm_project/screens/screens.dart';

class AppRoutes {
  // static const home = '/home';
  static const notFound = '/not-found';

  static final routes = [
    GetPage(
      title: 'Sign Up',
      name: '/sign-up',
      page: () => const SignUpScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      title: 'Home',
      name: '/home',
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      title: 'Client',
      name: '/client',
      page: () => const AddClientScreen(),
    ),
  ];
}

import 'package:crm_project/screens/clients/add_client_screen.dart';
import 'package:get/get.dart';

import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/screens/screens.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      title: 'Sign Up',
      name: ConstantRoutesApp.signUp,
      page: () => const SignUpScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      title: 'Login',
      name: ConstantRoutesApp.login,
      page: () => const LoginScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      title: 'Home',
      name: ConstantRoutesApp.home,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      title: 'Client',
      name: '/client',
      page: () => const AddClientScreen(),
    ),
    GetPage(
      title: 'Profile',
      name: '/profile',
      page: () => const AccountProfileScreen(),
    ),
  ];
}

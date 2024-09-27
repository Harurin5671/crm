import 'package:get/get.dart';

import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/screens/screens.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      title: 'Home',
      name: ConstantRoutesApp.home,
      page: () => const HomeScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      title: 'Sign Up',
      name: ConstantRoutesApp.signUp,
      page: () => const SignUpScreen(),
      transition: Transition.fadeIn,
      binding: SignUpBinding(),
    ),
    GetPage(
      title: 'Login',
      name: ConstantRoutesApp.login,
      page: () => const ForgotPasswordScreen(),
      transition: Transition.fadeIn,
      binding: LoginBinding(),
    ),
    GetPage(
      title: 'Forgot Password',
      name: ConstantRoutesApp.forgotPassword,
      page: () => const ForgotPasswordScreen(),
      transition: Transition.fadeIn,
      // binding: ForgotPasswordBinding(),
    ),
    GetPage(
      title: 'Client',
      name: '/client',
      page: () => const AddClientScreen(),
    ),
  ];

  static final notFound = GetPage(
    title: 'Not found',
    name: ConstantRoutesApp.notFound,
    page: () => const NotFoundScreen(),
  );
}

import 'package:get/get.dart';

import 'package:crm_project/controllers/controllers.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}
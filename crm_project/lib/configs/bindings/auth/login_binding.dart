import 'package:get/get.dart';

import 'package:crm_project/controllers/controllers.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
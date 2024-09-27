import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();
  final RxBool isRememberMe = false.obs;

  void updateRememberMe(bool value) {
    isRememberMe.value = value;
  }

  void cleanForm() {
    email.text = '';
    password.text = '';
    isRememberMe.value = false;
  }

  validateEmail(String value) {
    bool isEmail = GetUtils.isEmail(value);
    if (value.isEmpty) {
      return 'El correo es requerido';
    }

    if (!isEmail) {
      return 'El correo no es valido';
    }
    
    return null;
  }

  validatePassword(String value) {
    if (value.isEmpty) {
      return 'La contraseña es requerida';
    }
    return null;
  }
}

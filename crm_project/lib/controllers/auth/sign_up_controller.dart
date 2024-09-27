import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignUpController extends GetxController {
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final RxBool isAcceptTerms = false.obs;

  void updateTerms(bool value) {
    isAcceptTerms.value = value;
  }

  void cleanForm() {
    username.text = '';
    email.text = '';
    password.text = '';
    isAcceptTerms.value = false;
  }

  //Validators
  validateUsername(String value) {
    if (value.isEmpty) {
      return 'El username es requerido';
    }
    return null;
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

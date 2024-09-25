// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crm_project/configs/configs.dart';

class NotificationHelper {
  static void show({
    required String title,
    required String message,
    bool isError = false,
    Color? backgroundColor,
    IconData? icon,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      colorText: isError ? AppColors.white : AppColors.black,
      backgroundColor: backgroundColor ??
          // (isError ? AppColors.errorColor : AppColors.successColor),
          (isError ? AppColors.black : AppColors.black),
      duration: const Duration(seconds: 1),
      icon: Icon(
        icon ?? (isError ? Icons.error : Icons.check_circle),
        color: isError ? AppColors.white : AppColors.black,
      ),
      borderRadius: 8,
    );
  }
}
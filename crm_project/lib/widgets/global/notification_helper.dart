import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:crm_project/configs/configs.dart';



class NotificationHelper {
  static void show({
    required BuildContext context,
    required String title,
    required String message,
    NotificationType type = NotificationType.info,
    NotificationStyle style = NotificationStyle.filled,
  }) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color backgroundColor;
    Color textColor;
    IconData icon;

    switch (type) {
      case NotificationType.success:
        backgroundColor =
            isDarkMode ? AppColors.successDarkMain : AppColors.successLightMain;
        textColor = AppColors.white;
        icon = Icons.check_circle_outline;
        break;
      case NotificationType.error:
        backgroundColor =
            isDarkMode ? AppColors.dangerLightMain : AppColors.dangerDarkMain;
        textColor = AppColors.white;
        icon = Icons.error_outline;
        break;
      case NotificationType.warning:
        backgroundColor =
            isDarkMode ? AppColors.warningLightMain : AppColors.warningDarkMain;
        textColor = AppColors.white;
        icon = Icons.warning_amber_outlined;
        break;
      case NotificationType.info:
      default:
        backgroundColor =
            isDarkMode ? AppColors.infoLightMain : AppColors.infoDarkMain;
        textColor = AppColors.white;
        icon = Icons.info_outline;
        break;
    }
    switch (style) {
      case NotificationStyle.outlined:
        Get.snackbar(
          title,
          message,
          colorText: backgroundColor,
          backgroundColor: Colors.transparent,
          duration: const Duration(seconds: 3),
          icon: Icon(icon, color: backgroundColor),
          borderRadius: 8,
          borderColor: backgroundColor,
          borderWidth: 1.5,
        );
        break;
        case NotificationStyle.standard:
        var backgroundColorStandard = _getStandardBackgroundColor(type, isDarkMode);
        Get.snackbar(
          title,
          message,
          colorText: backgroundColor,
          backgroundColor: backgroundColorStandard, 
          duration: const Duration(seconds: 3),
          icon: Icon(icon, color: backgroundColor),
          borderRadius: 8,
          borderColor: backgroundColorStandard,
          borderWidth: 1.5,
        );
        break;
      case NotificationStyle.filled:
      default:
        Get.snackbar(
          title,
          message,
          colorText: textColor,
          backgroundColor: backgroundColor, // Fondo sólido
          duration: const Duration(seconds: 3),
          icon: Icon(icon, color: textColor),
          borderRadius: 8,
        );
        break;
    }
  }
   static Color _getStandardBackgroundColor(NotificationType type, bool isDarkMode) {
    switch (type) {
      case NotificationType.success:
        return isDarkMode ? AppColors.darkSuccessCustomBg : AppColors.lightSuccessCustomBg;
      case NotificationType.error:
        return isDarkMode ? AppColors.darkErrorCustomBg : AppColors.lightErrorCustomBg;
      case NotificationType.warning:
        return isDarkMode ? AppColors.darkWarningCustomBg : AppColors.lightWarningCustomBg;
      case NotificationType.info:
      default:
        return isDarkMode ? AppColors.darkInfoCustomBg : AppColors.lightInfoCustomBg;
    }
  }
}

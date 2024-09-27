import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

import 'package:crm_project/utils/utils.dart';
import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/widgets/widgets.dart';
import 'package:crm_project/controllers/controllers.dart';

class SignUpResponsive extends GetView<SignUpController> {
  const SignUpResponsive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    bool isMobile = Responsive.isMobile(context);
    SizeConfig().init(context);
    return SafeArea(
      child: Center(
        child: Container(
          color: isDarkMode
              ? isMobile
                  ? null
                  : AppColors.darkOverlay
              : null,
          padding: isMobile
              ? const EdgeInsets.symmetric(horizontal: 20, vertical: 0)
              : const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          width: isMobile ? double.infinity : SizeConfig.screenWidth / 3.1,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'La aventura comienza aquí 🚀',
                  style: TextStyle(
                      color: isDarkMode
                          ? AppColors.darkTextPrimary
                          : AppColors.lightTextPrimary,
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                      height: 2),
                ),
                Text(
                  'Haz que tu gestión sea fácil y divertida!',
                  style: TextStyle(
                    color: isDarkMode
                        ? AppColors.darkTextSecondary
                        : AppColors.lightTextSecondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: signUpFormKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.username,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          hintText: 'Username',
                        ),
                        validator: (value) =>
                            controller.validateUsername(value!),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller.email,
                        decoration: const InputDecoration(
                          labelText: 'Correo',
                          hintText: 'Correo',
                        ),
                        validator: (value) => controller.validateEmail(value!),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: controller.password,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: isDarkMode
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                          hintText: 'Contraseña',
                        ),
                        validator: (value) =>
                            controller.validatePassword(value!),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Obx(
                            () => Checkbox(
                              value: controller.isAcceptTerms.value,
                              onChanged: (value) {
                                controller.updateTerms(value!);
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Acepto los términos y condiciones',
                            style: TextStyle(
                              color: isDarkMode
                                  ? AppColors.darkTextPrimary
                                  : AppColors.lightTextPrimary,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          bool isValid = validateAndSaveForm(signUpFormKey);

                          if (isValid) {
                            if (!controller.isAcceptTerms.value) {
                              NotificationHelper.show(
                                context: context,
                                title: 'Términos y Condiciones',
                                message:
                                    'Debes aceptar los términos y condiciones para continuar.',
                                type: NotificationType.error,
                                style: NotificationStyle.filled,
                              );
                            } else {
                              Get.offAllNamed(ConstantRoutesApp.home);
                              controller.cleanForm();
                            }
                          }
                        },
                        child: const Text(
                          'REGISTRAR',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (isDarkMode)
                            Expanded(
                              child: Container(
                                height: 1,
                                color: AppColors.darkDivider,
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              'O regístrate con',
                              style: TextStyle(
                                color: isDarkMode
                                    ? AppColors.darkTextSecondary
                                    : AppColors.lightTextSecondary,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          if (isDarkMode)
                            Expanded(
                              child: Container(
                                height: 1,
                                color: AppColors.darkDivider,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                'assets/icons/svg/social/google.svg',
                                height: 20,
                                width: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                isDarkMode
                                    ? 'assets/icons/svg/social/github_dark.svg'
                                    : 'assets/icons/svg/social/github_light.svg',
                                height: 20,
                                width: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

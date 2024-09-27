import 'package:crm_project/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

import 'package:crm_project/configs/configs.dart';
import 'package:crm_project/controllers/controllers.dart';

class LoginResponsive extends GetView<LoginController> {
  const LoginResponsive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
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
                  'Bienvenido a CRM! 👏',
                  style: TextStyle(
                      color: isDarkMode
                          ? AppColors.darkTextPrimary
                          : AppColors.lightTextPrimary,
                      fontSize: 34,
                      fontWeight: FontWeight.w400,
                      height: 2),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'Inicie sesión en su cuenta y comience la aventura',
                    style: TextStyle(
                      color: isDarkMode
                          ? AppColors.darkTextSecondary
                          : AppColors.lightTextSecondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: loginFormKey,
                  child: Column(
                    children: [
                      TextFormField(
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
                        validator: (value) => controller.validatePassword(value!),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                             Obx(
                                () =>  Checkbox(
                                value: controller.isRememberMe.value,
                                onChanged: (value) {
                                  controller.updateRememberMe(value!);
                                },
                                activeColor: controller.isRememberMe.value
                                  ? AppColors.primaryDarkMain
                                  : AppColors.secondary,
                              checkColor: AppColors.white,
                              ),
                             ),
                              Text(
                                'Recuérdame',
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
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Text(
                                'Olvidaste tu contraseña?',
                                style: TextStyle(
                                  color: AppColors.primaryDarkMain,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          final isValid = validateAndSaveForm(loginFormKey);
                          if (isValid) {
                            Get.offAllNamed(ConstantRoutesApp.home);
                          }
                        },
                        child: const Text(
                          'INICIAR SESIÓN',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nuevo en nuestra plataforma?',
                      style: TextStyle(
                        color: isDarkMode
                            ? AppColors.darkTextSecondary
                            : AppColors.lightTextSecondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(ConstantRoutesApp.signUp);
                        },
                        child: const Text(
                          'Crea una cuenta',
                          style: TextStyle(
                            color: AppColors.primaryDarkMain,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
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
                                color:
                                    AppColors.darkDivider, // Color de la línea
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ), // Espaciado alrededor del texto
                            child: Text(
                              'O inicia sesión con',
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

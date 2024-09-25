import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:crm_project/configs/configs.dart';

class SignUpResponsive extends StatelessWidget {
  const SignUpResponsive({
    super.key,
  });
  // final bool isMobile;

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> formKey = GlobalKey();
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
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          hintText: 'Username',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Correo',
                          hintText: 'Correo',
                        ),
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
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                            activeColor: isDarkMode
                                ? AppColors.darkActionActive
                                : AppColors.lightActionActive,
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
                        onPressed: () {
                          Get.toNamed('/login');
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
                                color:
                                    AppColors.darkDivider,
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

import 'package:flutter/material.dart';

import 'package:crm_project/configs/configs.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> formKey = GlobalKey();
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            // color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 60),
            width: SizeConfig.screenWidth / 2.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'La aventura comienza aquí 🚀',
                  style: TextStyle(
                      color: isDarkMode
                          ? AppColors.darkTextPrimary
                          : AppColors.lightTextPrimary,
                      fontSize: 34,
                      fontWeight: FontWeight.w400),
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
                        decoration: InputDecoration(
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: isDarkMode
                                ? AppColors.darkTextDisabled
                                : AppColors.lightTextDisabled,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            color: isDarkMode
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isDarkMode
                                  ? AppColors.darkActionDisabled
                                  : AppColors.lightActionDisabled,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isDarkMode
                                  ? AppColors.darkActionFocus
                                  : AppColors.lightActionFocus,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Correo',
                          labelStyle: TextStyle(
                            color: isDarkMode
                                ? AppColors.darkTextDisabled
                                : AppColors.lightTextDisabled,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          hintText: 'Correo',
                          hintStyle: TextStyle(
                            color: isDarkMode
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isDarkMode
                                  ? AppColors.darkActionDisabled
                                  : AppColors.lightActionDisabled,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isDarkMode
                                  ? AppColors.darkActionFocus
                                  : AppColors.lightActionFocus,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          labelStyle: TextStyle(
                            color: isDarkMode
                                ? AppColors.darkTextDisabled
                                : AppColors.lightTextDisabled,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: isDarkMode
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                          ),
                          hintText: 'Contraseña',
                          hintStyle: TextStyle(
                            color: isDarkMode
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isDarkMode
                                  ? AppColors.darkActionDisabled
                                  : AppColors.lightActionDisabled,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: isDarkMode
                                  ? AppColors.darkActionFocus
                                  : AppColors.lightActionFocus,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
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
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                            backgroundColor:
                                AppColors.primaryLightContainedHover,
                            elevation: 5),
                        onPressed: () {},
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
                        Text(
                          'O regístrate con',
                          style: TextStyle(
                            color: isDarkMode
                                ? AppColors.darkTextSecondary
                                : AppColors.lightTextSecondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.pregnant_woman_outlined,
                                color: AppColors.primaryLightMain,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.pregnant_woman_outlined,
                                color: AppColors.primaryLightMain,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.pregnant_woman_outlined,
                                color: AppColors.primaryLightMain,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.pregnant_woman_outlined,
                                color: AppColors.primaryLightMain,
                              ),
                            ),
                          ],
                        )
                      ]),
                )
              ],
            ),
            // child:
          ),
        ),
      ),
    );
  }
}

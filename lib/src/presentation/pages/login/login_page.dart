import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/routes/app_pages.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/pages/login/login_controller.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_images.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_primary_button_widget.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_primary_text_form_field_widget.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Image.asset(
        AppImages.loginFooter,
        width: size.width,
        height: size.height * 0.08,
        fit: BoxFit.fill,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppImages.loginHeader,
                width: size.width,
                height: size.height * 0.31,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: size.width * 0.5,
                child: Text(
                  'Bem-vindo ao Vistoria!',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.normal(
                    fontSize: 27,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  const AppPrimaryTextFormFieldWidget(labelText: 'Login'),
                  const SizedBox(height: 10),
                  const AppPrimaryTextFormFieldWidget(labelText: 'Senha'),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(
                      () => TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            splashFactory: NoSplash.splashFactory),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Transform.scale(
                              scale: 1.2,
                              child: IgnorePointer(
                                child: SizedBox(
                                  width: 24,
                                  child: Checkbox(
                                    value: controller.rememberUser.value,
                                    checkColor: Colors.white,
                                    side: const BorderSide(
                                      width: 1.0,
                                      color: Color(0XFF757575),
                                    ),
                                    shape: const CircleBorder(),
                                    activeColor: AppColors.primary,
                                    onChanged: (_) {},
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              'Manter-me conectado',
                              style: AppTextStyles.normal().copyWith(
                                fontSize: 14,
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () => controller.rememberUser.value =
                            !controller.rememberUser.value,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppPrimaryButtonWidget(
                      onPressed: () => Get.offAndToNamed(Routes.dashboard),
                      label: 'Entrar'),
                ],
              ).paddingSymmetric(horizontal: 20),
            ],
          ),
        ),
      ),
    );
  }
}

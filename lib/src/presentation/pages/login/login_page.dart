import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/login/login_controller.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(
        () => controller.webViewIsLoading.value
            ? const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                ),
              )
            : WebViewWidget(controller: controller.controllerWebView),
      ),
    );
  }
}

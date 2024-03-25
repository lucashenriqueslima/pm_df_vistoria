import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}

import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/dashboard_controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}

import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/dashboard_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/views/my_surveys/list_my_surveys_controller.dart';

class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );

    Get.lazyPut<ListMySurveysController>(
      () => ListMySurveysController(
        dashboardController: Get.find<DashboardController>(),
      ),
    );
  }
}

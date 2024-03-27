import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_page_controller.dart';

class DashboardController extends GetxController {
  late final AppPageController pageControllerUtil;

  final selectedIndex = 0.obs;

  @override
  void onInit() {
    pageControllerUtil = AppPageController(currentPage: selectedIndex);
    super.onInit();
  }
}

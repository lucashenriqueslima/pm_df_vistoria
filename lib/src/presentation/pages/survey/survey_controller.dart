import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_page_controller.dart';

class SurveyController extends GetxController {
  late final AppPageController pageControllerUtil;

  @override
  void onInit() {
    pageControllerUtil = AppPageController();
    super.onInit();
  }

  @override
  void onClose() {
    pageControllerUtil.dispose();
    super.onClose();
  }
}

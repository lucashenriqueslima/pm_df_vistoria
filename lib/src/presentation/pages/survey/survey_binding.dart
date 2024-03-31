import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/domain/survey/enums/survey_type.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/survey_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/views/list_cars/list_cars_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/views/search_car/search_car_controller.dart';
import 'package:pm_df_vistoria/src/presentation/views/form_survey/form_survey_controller.dart';

class SurveyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SurveyController>(
      () => SurveyController(),
    );
    Get.lazyPut<SearchCarController>(
      () => SearchCarController(
        surveyController: Get.find<SurveyController>(),
      ),
    );
    Get.lazyPut<ListCarsController>(
      () => ListCarsController(
        surveyController: Get.find<SurveyController>(),
      ),
    );
    Get.lazyPut<FormSurveyController>(
      () => FormSurveyController(
        surveyController: Get.find<SurveyController>(),
        surveyType: SurveyType.initial,
        isReadOnly: false,
      ),
    );
  }
}

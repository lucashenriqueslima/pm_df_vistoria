import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/form_survey/form_survey_controller.dart';

class FormSurveyBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<FormSurveyController>(
      FormSurveyController(),
    );
  }
}

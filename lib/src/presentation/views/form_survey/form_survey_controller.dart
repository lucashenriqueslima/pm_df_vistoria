import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/domain/survey/enums/survey_type.dart';
import 'package:pm_df_vistoria/src/domain/survey/survey.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/survey_controller.dart';

class FormSurveyController extends GetxController {
  final SurveyController surveyController;
  final SurveyType surveyType;
  final bool isReadOnly;

  FormSurveyController({
    required this.surveyController,
    required this.surveyType,
    required this.isReadOnly,
  });

  late final String title = 'Vistoria ${surveyType.label}';

  final survey = Survey.empty('').obs;

  @override
  void onInit() {
    super.onInit();
    survey.value.ammountFuel = 50;
  }
}

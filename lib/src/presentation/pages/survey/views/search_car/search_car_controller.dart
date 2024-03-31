import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/survey_controller.dart';

class SearchCarController extends GetxController {
  final SurveyController surveyController;

  SearchCarController({required this.surveyController});

  final Rx<String> selectedUnity = 'SP - São Paulo'.obs;
  final Rx<String> selectedCarType = 'Tipo 1'.obs;
}

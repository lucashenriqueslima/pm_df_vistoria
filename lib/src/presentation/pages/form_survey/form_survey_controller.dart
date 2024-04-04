import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/domain/survey/enums/survey_type.dart';
import 'package:pm_df_vistoria/src/domain/survey/survey.dart';

class FormSurveyController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final SurveyType surveyType = Get.arguments['surveyType'] as SurveyType;
  late final bool isReadOnly = Get.arguments['isReadOnly'] as bool;
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 2, vsync: this);
    survey.value.ammountFuel = 50;
  }

  late final String title = 'Vistoria ${surveyType.label}';

  final survey = Survey.empty('').obs;
}

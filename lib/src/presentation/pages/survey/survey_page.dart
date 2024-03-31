import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/survey_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/views/list_cars/list_cars_view.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/views/search_car/search_car_view.dart';
import 'package:pm_df_vistoria/src/presentation/views/form_survey/form_survey_view.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_header_widget.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_page_view_widget.dart';

class SurveyPage extends GetView<SurveyController> {
  const SurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppHeaderWidget(),
        body: AppPageViewWidget(
          pageControllerUtil: controller.pageControllerUtil,
          children: const [
            SearchCarView(),
            ListCarsView(),
            FormSurveyView(),
          ],
        ),
      ),
    );
  }
}

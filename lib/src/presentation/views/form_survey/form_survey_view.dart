import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/constants/padding_constants.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';
import 'package:pm_df_vistoria/src/presentation/views/form_survey/form_survey_controller.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_row_title_widget.dart';

class FormSurveyView extends StatefulWidget {
  const FormSurveyView({super.key});

  @override
  State<FormSurveyView> createState() => _FormSurveyViewState();
}

class _FormSurveyViewState extends State<FormSurveyView>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FormSurveyController>();

    return SingleChildScrollView(
      child: Column(
        children: [
          AppRowTitleWidget(
            title: controller.title,
            pageControllerUtil: controller.surveyController.pageControllerUtil,
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Toyota / Etios",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Placa:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Tipo de Viatura:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Unidade:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Situação da Viatura:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'PAD-8854',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'Velada',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'SP - São Paulo',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.primary,
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    child: const Text(
                      'Em vistória',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ).paddingRight(15),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: TabBar(
              controller: tabController,
              tabs: [
                Tab(
                  child: Text(
                    'Checklist',
                    style: AppTextStyles.normal().copyWith(fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    'Imagens',
                    style: AppTextStyles.normal().copyWith(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80.0,
            child: TabBarView(
              controller: tabController,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: IgnorePointer(
                                      child: SizedBox(
                                        width: 24,
                                        child: Checkbox(
                                          value: false,
                                          checkColor: Colors.white,
                                          side: const BorderSide(
                                            width: 1.0,
                                            color: Color(0XFF757575),
                                          ),
                                          activeColor: AppColors.primary,
                                          onChanged: (_) {},
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'SDSA',
                                    style: AppTextStyles.normal().copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {}),
                        ),
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: IgnorePointer(
                                      child: SizedBox(
                                        width: 24,
                                        child: Checkbox(
                                          value: false,
                                          checkColor: Colors.white,
                                          side: const BorderSide(
                                            width: 1.0,
                                            color: Color(0XFF757575),
                                          ),
                                          activeColor: AppColors.primary,
                                          onChanged: (_) {},
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'ASDASDSA',
                                    style: AppTextStyles.normal().copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {}),
                        ),
                        Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Transform.scale(
                                    scale: 1.2,
                                    child: IgnorePointer(
                                      child: SizedBox(
                                        width: 24,
                                        child: Checkbox(
                                          value: false,
                                          checkColor: Colors.white,
                                          side: const BorderSide(
                                            width: 1.0,
                                            color: Color(0XFF757575),
                                          ),
                                          activeColor: AppColors.primary,
                                          onChanged: (_) {},
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'ASDASDSA',
                                    style: AppTextStyles.normal().copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                    const Row()
                  ],
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.location_on),
                    title:
                        const Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(
                        icon: const Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),
        ],
      ).paddingAll(
        PaddingConstants.page,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/constants/padding_constants.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/pages/form_survey/form_survey_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/form_survey/widgets/text_button_checkbox.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_row_title_widget.dart';

class FormSurveyPage extends GetView<FormSurveyController> {
  const FormSurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FormSurveyPage')),
      body: Column(
        children: [
          AppRowTitleWidget(
            title: controller.title,
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
          TabBar(
            controller: controller.tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3.0,
            tabs: [
              Tab(
                child: Text(
                  'Checklist',
                  style: AppTextStyles.normal().copyWith(fontSize: 17),
                ),
              ),
              Tab(
                child: Text(
                  'Imagens',
                  style: AppTextStyles.normal().copyWith(fontSize: 17),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Quantidade de combustível',
                          style: AppTextStyles.bold().copyWith(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: AppColors.active,
                          trackHeight: 3.0,
                        ),
                        child: Obx(
                          () => Slider(
                            value: controller.survey.value.ammountFuel,
                            min: 0,
                            max: 100,
                            divisions: 10,
                            activeColor: AppColors.active,
                            label:
                                '${controller.survey.value.ammountFuel.round().toString()}%',
                            onChanged: (value) =>
                                controller.survey.update((val) {
                              val!.ammountFuel = value;
                            }),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          TextButtonCheckboxWidget(
                              label: 'aaasdasd',
                              value: controller.survey.value.roof.isBroken.obs),
                        ],
                      ),
                    ],
                  ).paddingTop(20),
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

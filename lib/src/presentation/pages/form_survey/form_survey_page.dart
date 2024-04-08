import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/constants/padding_constants.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/pages/form_survey/form_survey_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/form_survey/widgets/custom_slider_widget.dart';
import 'package:pm_df_vistoria/src/presentation/pages/form_survey/widgets/text_button_checkbox.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_decorations.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_header_widget.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_primary_button_widget.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_primary_text_form_field_widget.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_row_title_widget.dart';

class FormSurveyPage extends GetView<FormSurveyController> {
  const FormSurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeaderWidget(),
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
            height: 10,
          ),
          TabBar(
            controller: controller.tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4.0,
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
                            fontSize: 16.6,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      Obx(
                        () => CustomSliderWidget(
                          minValue: 0,
                          maxValue: 100,
                          value: controller.survey.value.ammountFuel,
                          majorTick: 5,
                          minorTick: 1,
                          labelValuePrecision: 0,
                          tickValuePrecision: 0,
                          onChanged: (value) => controller.survey.update((val) {
                            val!.ammountFuel = value;
                          }),
                          linearStep: false,
                        ),
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: AppPrimaryTextFormFieldWidget(
                              labelText: 'Último odômetro',
                              labelTextStyle: AppTextStyles.bold().copyWith(
                                fontSize: 16.6,
                                color: AppColors.darkGrey,
                              ),
                              verticalContentPadding: 0,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: AppPrimaryTextFormFieldWidget(
                              labelText: 'Odômetro atual',
                              labelTextStyle: AppTextStyles.bold().copyWith(
                                fontSize: 16.6,
                                color: AppColors.darkGrey,
                              ),
                              verticalContentPadding: 0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lataria',
                          style: AppTextStyles.bold().copyWith(
                            fontSize: 16.6,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Arranhado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Danificado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Quebrado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Faltando',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Amassado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Sem defeitos',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AppPrimaryTextFormFieldWidget(
                        labelText: 'Observação',
                        labelTextStyle: AppTextStyles.normal().copyWith(
                          color: AppColors.darkGrey,
                        ),
                        verticalContentPadding: 0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Teto',
                          style: AppTextStyles.bold().copyWith(
                            fontSize: 16.6,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Arranhado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Danificado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Quebrado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Faltando',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Amassado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Sem defeitos',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AppPrimaryTextFormFieldWidget(
                        labelText: 'Observação',
                        labelTextStyle: AppTextStyles.normal().copyWith(
                          color: AppColors.darkGrey,
                        ),
                        verticalContentPadding: 0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Capô',
                          style: AppTextStyles.bold().copyWith(
                            fontSize: 16.6,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Arranhado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Danificado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Quebrado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Faltando',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Amassado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Sem defeitos',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AppPrimaryTextFormFieldWidget(
                        labelText: 'Observação',
                        labelTextStyle: AppTextStyles.normal().copyWith(
                          color: AppColors.darkGrey,
                        ),
                        verticalContentPadding: 0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Pneus',
                          style: AppTextStyles.bold().copyWith(
                            fontSize: 16.6,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Careca',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Furado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Sem defeitos',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AppPrimaryTextFormFieldWidget(
                        labelText: 'Observação',
                        labelTextStyle: AppTextStyles.normal().copyWith(
                          color: AppColors.darkGrey,
                        ),
                        verticalContentPadding: 0,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Elétrica',
                          style: AppTextStyles.bold().copyWith(
                            fontSize: 16.6,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Luzes (setas)',
                          style: AppTextStyles.normal().copyWith(
                            fontSize: 15.5,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Com defeito',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Sem defeito',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Roubado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Hotlight',
                          style: AppTextStyles.normal().copyWith(
                            fontSize: 15.5,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Com defeito',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Sem defeito',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Roubado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Rádio',
                          style: AppTextStyles.normal().copyWith(
                            fontSize: 15.5,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Com defeito',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Sem defeito',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                          Obx(
                            () => TextButtonCheckboxWidget(
                              label: 'Roubado',
                              value: controller.survey.value.roof.isBroken.obs,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      AppPrimaryTextFormFieldWidget(
                        labelText: 'Observação',
                        labelTextStyle: AppTextStyles.normal().copyWith(
                          color: AppColors.darkGrey,
                        ),
                        verticalContentPadding: 0,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      AppPrimaryButtonWidget(
                        onPressed: () {},
                        label: 'Finalizar vistoria',
                      ),
                    ],
                  ).paddingTop(20),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 120,
                            decoration: AppDecorations.defaultBoxDecoration(),
                            child: const Icon(
                              Icons.camera_alt,
                              color: AppColors.grey,
                              size: 60,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: Container(
                            height: 120,
                            decoration: AppDecorations.defaultBoxDecoration(),
                            child: const Icon(
                              Icons.image,
                              color: AppColors.grey,
                              size: 60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ).paddingTop(20),
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

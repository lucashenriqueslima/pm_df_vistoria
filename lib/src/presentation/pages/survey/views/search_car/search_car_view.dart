import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/constants/padding_constants.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/views/search_car/search_car_controller.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_decorations.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_primary_button_widget.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_primary_drop_down_button_widget.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_primary_text_form_field_widget.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_row_title_widget.dart';

class SearchCarView extends StatelessWidget {
  const SearchCarView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchCarController>();
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          AppRowTitleWidget(
            title: 'Buscar Viaturas',
            pageControllerUtil: controller.surveyController.pageControllerUtil,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: AppDecorations.defaultBoxDecoration().copyWith(
              borderRadius: BorderRadius.circular(0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                AppPrimaryDropDownButtonWidget(
                  labelText: 'Unidade *',
                  onChanged: (value) {},
                  value: controller.selectedUnity,
                  items: const [
                    DropdownMenuItem(
                      value: 'SP - São Paulo',
                      child: Text(
                        'SP - São Paulo',
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'GO - Goiás',
                      child: Text(
                        'GO - Goiás',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppPrimaryTextFormFieldWidget(
                  labelText: 'Prefixo',
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppPrimaryTextFormFieldWidget(
                  labelText: 'Placa',
                ),
                const SizedBox(
                  height: 20,
                ),
                AppPrimaryDropDownButtonWidget(
                  labelText: 'Tipo de Viatura',
                  onChanged: (value) {},
                  value: controller.selectedCarType,
                  items: const [
                    DropdownMenuItem(
                      value: 'Tipo 1',
                      child: Text(
                        'Tipo 1',
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Tipo 2',
                      child: Text(
                        'Tipo 2',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          AppPrimaryButtonWidget(
            onPressed: () => controller
                .surveyController.pageControllerUtil.currentPage.value = 1,
            label: 'Buscar viatura',
          )
        ],
      ).paddingAll(
        PaddingConstants.page,
      ),
    );
  }
}

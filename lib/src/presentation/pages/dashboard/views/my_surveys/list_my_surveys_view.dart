import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/constants/padding_constants.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/views/my_surveys/list_my_surveys_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/survey/views/list_cars/list_cars_controller.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_decorations.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_row_title_widget.dart';

class ListMySurveysView extends StatelessWidget {
  const ListMySurveysView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListMySurveysController>();

    return SingleChildScrollView(
      child: Column(
        children: [
          AppRowTitleWidget(
            title: 'Viaturas',
            pageControllerUtil:
                controller.dashboardController.pageControllerUtil,
          ),
          const SizedBox(
            height: 40,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  decoration: AppDecorations.defaultBoxDecoration(),
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Toyota / Etios",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          PopupMenuButton<ListTileTitleAlignment>(
                            offset: const Offset(40, 43),
                            elevation: 0,
                            icon: SizedBox(
                              width: 5,
                              child: Icon(
                                Icons.more_vert,
                                size: 35,
                                color: Colors.grey.shade400,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                    color: Colors.black, width: 1.5)),
                            onSelected: (ListTileTitleAlignment? value) {},
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<ListTileTitleAlignment>>[
                              PopupMenuItem<ListTileTitleAlignment>(
                                onTap: () {},
                                height: 33,
                                value: ListTileTitleAlignment.threeLine,
                                child: const Text(
                                  "Vistoriar",
                                ).paddingOnly(right: 22, left: 10),
                              ),
                            ],
                          ),
                        ],
                      ).paddingOnly(right: 15),
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
                                height: 8,
                              ),
                              Text(
                                'Tipo de Viatura:',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Unidade:',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Data/Hora:',
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
                                height: 8,
                              ),
                              const Text(
                                'Inicial',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 3),
                                child: const Text(
                                  'Em uso',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                '10/10/2021 ás 10:00',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ).paddingRight(25),
                        ],
                      ),
                    ],
                  ).paddingLeft(8),
                );
              }),
        ],
      ).paddingAll(
        PaddingConstants.page,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/routes/app_pages.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_decorations.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Olá, <nome do policial>!',
          style: AppTextStyles.normal().copyWith(fontSize: 21),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () => Get.toNamed(Routes.survey),
          child: Container(
            decoration: AppDecorations.defaultBoxDecoration(),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Column(
              children: [
                const Icon(
                  Icons.directions_car,
                  color: AppColors.primary,
                  size: 110,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Vistoria',
                  style: AppTextStyles.normal().copyWith(fontSize: 18),
                ),
              ],
            ),
          ),
        )
      ],
    ).paddingAll(15);
  }
}

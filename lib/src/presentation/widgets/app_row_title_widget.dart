import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_page_controller.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class AppRowTitleWidget extends StatelessWidget {
  final String title;
  final AppPageController? pageControllerUtil;

  const AppRowTitleWidget({
    required this.title,
    this.pageControllerUtil,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {
                if (pageControllerUtil != null) {
                  pageControllerUtil!.previousPage();

                  return;
                }

                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: AppColors.primary,
                size: 30,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              title,
              style: AppTextStyles.normal().copyWith(fontSize: 25),
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
      ],
    );
  }
}

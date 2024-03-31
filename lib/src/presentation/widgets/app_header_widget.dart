import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_images.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class AppHeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppHeaderWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(90.0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.logoAppBar,
            ),
            Text(
              'Vistoria',
              style: AppTextStyles.normal().copyWith(
                fontSize: 34,
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 15),
      ),
    );
  }
}

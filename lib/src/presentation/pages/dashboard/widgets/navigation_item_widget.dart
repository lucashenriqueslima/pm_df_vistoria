import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class NavigationItemWidget extends StatelessWidget {
  final Rx<int> selectedIndex;
  final int index;
  final Widget icon;
  final String title;
  const NavigationItemWidget({
    required this.selectedIndex,
    required this.index,
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() => Material(
            color: selectedIndex.value != index
                ? Colors.transparent
                : AppColors.grey.withOpacity(0.2),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              highlightColor: AppColors.darkGrey.withOpacity(0.2),
              splashColor: AppColors.darkGrey.withOpacity(0.2),
              onTap: () {
                selectedIndex.value = index;
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  icon,
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    title,
                    style: AppTextStyles.normal().copyWith(
                      fontWeight: FontWeight.w200,
                      fontSize: 12,
                      color: AppColors.third,
                    ),
                  )
                ],
              ).paddingSymmetric(vertical: 7),
            ),
          )),
    );
  }
}

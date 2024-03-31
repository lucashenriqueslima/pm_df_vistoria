import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_decorations.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class AppPrimaryDropDownButtonWidget extends StatelessWidget {
  final String labelText;
  final List<DropdownMenuItem> items;
  final void Function(dynamic)? onChanged;
  final Rx<dynamic> value;

  const AppPrimaryDropDownButtonWidget({
    required this.labelText,
    required this.items,
    required this.onChanged,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: AppTextStyles.normal().copyWith(
              fontSize: 14.2,
              color: AppColors.darkGrey,
            ),
          ).paddingLeft(5),
          const SizedBox(
            height: 6,
          ),
          DropdownButtonFormField(
            decoration: AppDecorations.defaultInputDecoration(),
            items: items,
            onChanged: onChanged,
            isExpanded: true,
            value: value.value,
          ),
        ],
      ),
    );
  }
}

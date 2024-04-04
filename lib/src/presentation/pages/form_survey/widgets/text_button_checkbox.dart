import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class TextButtonCheckboxWidget extends StatelessWidget {
  final String label;
  final Rx<bool> value;
  const TextButtonCheckboxWidget({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              scale: 1.5,
              child: IgnorePointer(
                child: SizedBox(
                  width: 24,
                  child: Checkbox(
                    value: false,
                    checkColor: Colors.white,
                    side: const BorderSide(
                      width: 1.0,
                      color: AppColors.lightGrey,
                    ),
                    activeColor: AppColors.primary,
                    onChanged: (_) {},
                  ),
                ),
              ),
            ).paddingLeft(7),
            const SizedBox(width: 10),
            Text(
              'SDSA',
              style: AppTextStyles.normal().copyWith(
                fontSize: 14,
              ),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_ui_constants.dart';

class AppDecorations {
  AppDecorations._();

  static InputDecoration inputDecoration() => InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        fillColor: const Color(0XFFE5E5E5),
        hintStyle: AppTextStyles.normal()
            .copyWith(color: AppColors.secondary, fontSize: 12),
        border: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppUiConstants.radius)),
          borderSide: BorderSide(color: Color(0XFF888888)),
        ),
      );
}

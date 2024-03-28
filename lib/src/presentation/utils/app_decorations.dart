import 'package:flutter/material.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_ui_constants.dart';

class AppDecorations {
  AppDecorations._();

  static InputDecoration defaultInputDecoration() => InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        fillColor: const Color(0XFFE5E5E5),
        hintStyle: AppTextStyles.normal()
            .copyWith(color: AppColors.primary, fontSize: 12),
        border: const OutlineInputBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppUiConstants.radius)),
          borderSide: BorderSide(color: Color(0XFF888888)),
        ),
      );

  static BoxDecoration defaultBoxDecoration() => BoxDecoration(
        border: Border.all(width: 1.5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -1.0,
            blurRadius: 1,
            offset: Offset(0, 4),
          ),
        ],
      );
}

import 'package:flutter/material.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle normal({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) =>
      TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: 'MyriadPro',
      );

  static TextStyle bold({
    double? fontSize,
    Color? color,
  }) =>
      TextStyle(
        color: color ?? AppColors.primary,
        fontSize: fontSize ?? 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'MyriadPro',
      );

  // static TextStyle get title => const TextStyle(
  //       fontSize: 24,
  //       fontWeight: FontWeight.bold,
  //     );

  // static const TextStyle subtitle = TextStyle(
  //   fontSize: 20,
  //   fontWeight: FontWeight.bold,
  // );

  // static TextStyle body = GoogleFonts.beVietnamPro(
  //   textStyle: const TextStyle(
  //     fontSize: 16,
  //     fontWeight: FontWeight.normal,
  //   ),
  // );
}

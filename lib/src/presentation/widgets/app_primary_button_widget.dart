import 'package:flutter/material.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class AppPrimaryButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? label;
  final Widget? contentWidget;
  final double height;
  final double width;
  final double? maxWidth;
  final Color? backgroundColorButton;
  final TextStyle? textStyle;
  final bool isLoading;

  const AppPrimaryButtonWidget({
    super.key,
    this.label,
    this.contentWidget,
    required this.onPressed,
    this.height = 50.0,
    this.width = double.infinity,
    this.maxWidth,
    this.backgroundColorButton,
    this.textStyle,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth ?? width),
      height: height,
      width: maxWidth ?? width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColorButton ?? AppColors.primary,
          elevation: 0,
        ),
        onPressed: () {
          if (!isLoading && onPressed != null) {
            onPressed!();
          }
        },
        child: FittedBox(
          child: _getButtonContent(),
        ),
      ),
    );
  }

  Widget _getButtonContent() {
    if (label != null) {
      return FittedBox(
        child: Text(label ?? '',
            style: textStyle ??
                AppTextStyles.normal(
                  fontSize: 18,
                  color: AppColors.white,
                )),
      );
    }

    return contentWidget ?? const SizedBox();
  }
}

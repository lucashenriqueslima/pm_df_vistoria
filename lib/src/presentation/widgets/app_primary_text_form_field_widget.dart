import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pm_df_vistoria/src/presentation/extensions/widget_extension.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class AppPrimaryTextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;
  final String labelText;
  final TextStyle? labelTextStyle;
  final String? hintText;
  final String? errorText;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  final double? verticalContentPadding;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool? enabled;
  final bool? autofocus;
  final int? maxLength;

  const AppPrimaryTextFormFieldWidget({
    super.key,
    this.controller,
    this.focusNode,
    this.nextFocusNode,
    this.inputFormatters,
    this.textCapitalization,
    this.labelTextStyle,
    required this.labelText,
    this.hintText,
    this.errorText,
    this.validator,
    this.onFieldSubmitted,
    this.textInputAction,
    this.textStyle,
    this.verticalContentPadding,
    this.textAlign,
    this.onChanged,
    this.onSaved,
    this.keyboardType,
    this.obscureText,
    this.enabled,
    this.autofocus,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const Key('AppPrimaryTextFormFieldWidget'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: labelTextStyle ??
              AppTextStyles.normal().copyWith(
                fontSize: 14.2,
                color: AppColors.darkGrey,
              ),
        ).paddingLeft(5),
        const SizedBox(
          height: 6,
        ),
        TextFormField(
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          keyboardType: keyboardType,
          controller: controller,
          inputFormatters: inputFormatters,
          onChanged: ((value) => onChanged != null ? onChanged!(value) : null),
          obscureText: obscureText ?? false,
          enabled: enabled ?? true,
          autofocus: autofocus ?? false,
          focusNode: focusNode,
          textInputAction: textInputAction,
          textAlign: textAlign ?? TextAlign.start,
          validator: validator,
          maxLength: maxLength,
          onSaved: onSaved,
          style: AppTextStyles.normal().copyWith(
            color: AppColors.darkGrey,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: verticalContentPadding ?? 12.9, horizontal: 8),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: Color(0XFF979797),
                width: 2,
              ),
            ),
          ),
          onFieldSubmitted: (value) => nextFocusNode != null
              ? FocusScope.of(context).requestFocus(nextFocusNode)
              : onFieldSubmitted != null
                  ? onFieldSubmitted!(value)
                  : null,
        ),
      ],
    );
  }
}

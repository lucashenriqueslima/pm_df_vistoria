import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDialog extends StatelessWidget {
  final String title;
  final String content;
  final String? primaryButtornLabel;
  final VoidCallback? primaryButtonOnPressed;
  final String? secondaryButtonLabel;
  final VoidCallback? secondaryButtonOnPressed;

  const AppDialog(
      {required this.title,
      required this.content,
      this.primaryButtornLabel,
      this.primaryButtonOnPressed,
      this.secondaryButtonLabel,
      this.secondaryButtonOnPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: primaryButtonOnPressed,
          child: Text(primaryButtornLabel ?? 'Ok'),
        ),
        if (secondaryButtonLabel != null)
          TextButton(
            onPressed: secondaryButtonOnPressed,
            child: Text(secondaryButtonLabel ?? 'Cancel'),
          ),
      ],
    );
  }
}

class AppDialogManager {
  static Future<dynamic> showDialog({
    required String title,
    required String content,
    String? primaryButtornLabel,
    VoidCallback? primaryButtonOnPressed,
    String? secondaryButtonLabel,
    VoidCallback? secondaryButtonOnPressed,
  }) {
    return Get.dialog(
      barrierDismissible: false,
      AppDialog(
        title: title,
        content: content,
        primaryButtornLabel: primaryButtornLabel,
        primaryButtonOnPressed: primaryButtonOnPressed,
        secondaryButtonLabel: secondaryButtonLabel,
        secondaryButtonOnPressed: secondaryButtonOnPressed,
      ),
    );
  }
}

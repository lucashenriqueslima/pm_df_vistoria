import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppModalBottomSheet {
  static void show(
    Widget modalBottomSheet, {
    Color? backgroundColor,
    bool isDismissible = true,
    bool enableDrag = true,
    bool persistent = false,
    Function? onClosing,
    ShapeBorder shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
  }) {
    Get.bottomSheet(
      modalBottomSheet,
      backgroundColor: backgroundColor,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      shape: shape,
      persistent: persistent,
    ).whenComplete(() {
      if (onClosing != null) {
        onClosing();
      }
    });
  }
}

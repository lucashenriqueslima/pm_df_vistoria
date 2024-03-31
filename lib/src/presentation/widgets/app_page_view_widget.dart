import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_page_controller.dart';

class AppPageViewWidget extends StatelessWidget {
  final AppPageController pageControllerUtil;
  final List<Widget> children;
  const AppPageViewWidget({
    super.key,
    required this.pageControllerUtil,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PopScope(
        canPop: pageControllerUtil.currentPage.value == 0,
        onPopInvoked: (didPop) {
          if (pageControllerUtil.currentPage.value > 0) {
            pageControllerUtil.previousPage();
          }
        },
        child: PageView(
            controller: pageControllerUtil.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: children),
      ),
    );
  }
}

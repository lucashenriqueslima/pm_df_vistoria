import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/dashboard_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/widgets/navigation_item_widget.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_images.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_text_styles.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 80),
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppImages.logoAppBar,
                  ),
                  Text(
                    'Vistoria',
                    style: AppTextStyles.normal().copyWith(
                      fontSize: 34,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 15),
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                NavigationItemWidget(
                    selectedIndex: controller.selectedIndex,
                    index: 0,
                    icon: const Icon(
                      Icons.home,
                      color: AppColors.primary,
                      size: 34,
                    ),
                    title: 'Home'),
                NavigationItemWidget(
                    selectedIndex: controller.selectedIndex,
                    index: 1,
                    icon: const Icon(
                      Icons.directions_car,
                      color: AppColors.primary,
                      size: 34,
                    ),
                    title: 'Vistoria'),
                NavigationItemWidget(
                    selectedIndex: controller.selectedIndex,
                    index: 2,
                    icon: const Icon(
                      Icons.list_sharp,
                      color: AppColors.primary,
                      size: 34,
                    ),
                    title: 'Minhas Vistorias'),
                NavigationItemWidget(
                    selectedIndex: controller.selectedIndex,
                    index: 3,
                    icon: const Icon(
                      Icons.person_outline,
                      color: AppColors.primary,
                      size: 34,
                    ),
                    title: 'Perfil'),
              ],
            ),
          ),
          body: PageView(
            controller: controller.pageControllerUtil.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              Center(
                child: Text('Home'),
              ),
              Center(
                child: Text('Vistoria'),
              ),
              Center(
                child: Text('Minhas Vistorias'),
              ),
              Center(
                child: Text('Perfil'),
              ),
            ],
          )),
    );
  }
}

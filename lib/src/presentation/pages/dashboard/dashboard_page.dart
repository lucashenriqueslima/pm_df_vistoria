import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/dashboard_controller.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/views/home/home_view.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/widgets/navigation_item_widget.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';
import 'package:pm_df_vistoria/src/presentation/widgets/app_header_widget.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppHeaderWidget(),
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
                  selectedIndex: controller.pageControllerUtil.currentPage,
                  index: 0,
                  icon: const Icon(
                    Icons.home,
                    color: AppColors.primary,
                    size: 34,
                  ),
                  title: 'Home'),
              NavigationItemWidget(
                  selectedIndex: controller.pageControllerUtil.currentPage,
                  index: 1,
                  icon: const Icon(
                    Icons.directions_car,
                    color: AppColors.primary,
                    size: 34,
                  ),
                  title: 'Vistoria'),
              NavigationItemWidget(
                  selectedIndex: controller.pageControllerUtil.currentPage,
                  index: 2,
                  icon: const Icon(
                    Icons.list_sharp,
                    color: AppColors.primary,
                    size: 34,
                  ),
                  title: 'Minhas Vistorias'),
              NavigationItemWidget(
                  selectedIndex: controller.pageControllerUtil.currentPage,
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
            HomeView(),
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
        ),
      ),
    );
  }
}

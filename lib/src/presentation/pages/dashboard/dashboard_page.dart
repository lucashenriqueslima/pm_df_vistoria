import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('DashboardPage')),
        body: const SafeArea(child: Text('DashboardController')));
  }
}

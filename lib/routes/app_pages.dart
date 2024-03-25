import 'package:get/get.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/dashboard_binding.dart';
import 'package:pm_df_vistoria/src/presentation/pages/dashboard/dashboard_page.dart';
import 'package:pm_df_vistoria/src/presentation/pages/login/login_binding.dart';
import 'package:pm_df_vistoria/src/presentation/pages/login/login_page.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.dashboard,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}

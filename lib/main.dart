import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pm_df_vistoria/routes/app_pages.dart';

import 'package:pm_df_vistoria/src/presentation/themes/app_theme.dart';
import 'package:pm_df_vistoria/src/presentation/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.secondary,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    Intl.defaultLocale = 'pt_BR';

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      initialRoute: Routes.login,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      title: 'PM DF Vistoria',
    );
  }
}
